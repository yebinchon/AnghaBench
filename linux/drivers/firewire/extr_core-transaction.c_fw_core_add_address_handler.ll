; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_core_add_address_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_core-transaction.c_fw_core_add_address_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_address_handler = type { i32, i32, i32 }
%struct.fw_address_region = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@address_handler_list_lock = common dso_local global i32 0, align 4
@address_handler_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fw_core_add_address_handler(%struct.fw_address_handler* %0, %struct.fw_address_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fw_address_handler*, align 8
  %5 = alloca %struct.fw_address_region*, align 8
  %6 = alloca %struct.fw_address_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.fw_address_handler* %0, %struct.fw_address_handler** %4, align 8
  store %struct.fw_address_region* %1, %struct.fw_address_region** %5, align 8
  %8 = load i32, i32* @EBUSY, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %11 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = and i64 %13, -281474976710653
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %41, label %16

16:                                               ; preds = %2
  %17 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %18 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %21 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %41, label %24

24:                                               ; preds = %16
  %25 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %26 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ugt i64 %28, 281474976710656
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %32 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 3
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %38 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36, %30, %24, %16, %2
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %100

44:                                               ; preds = %36
  %45 = call i32 @spin_lock(i32* @address_handler_list_lock)
  %46 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %47 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %50 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %96, %44
  %52 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %53 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %56 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %54, %57
  %59 = load %struct.fw_address_region*, %struct.fw_address_region** %5, align 8
  %60 = getelementptr inbounds %struct.fw_address_region, %struct.fw_address_region* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp sle i32 %58, %61
  br i1 %62, label %63, label %97

63:                                               ; preds = %51
  %64 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %65 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %68 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @is_in_fcp_region(i32 %66, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  store %struct.fw_address_handler* null, %struct.fw_address_handler** %6, align 8
  br label %81

73:                                               ; preds = %63
  %74 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %75 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %78 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call %struct.fw_address_handler* @lookup_overlapping_address_handler(i32* @address_handler_list, i32 %76, i32 %79)
  store %struct.fw_address_handler* %80, %struct.fw_address_handler** %6, align 8
  br label %81

81:                                               ; preds = %73, %72
  %82 = load %struct.fw_address_handler*, %struct.fw_address_handler** %6, align 8
  %83 = icmp ne %struct.fw_address_handler* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.fw_address_handler*, %struct.fw_address_handler** %6, align 8
  %86 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %89 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %96

92:                                               ; preds = %81
  %93 = load %struct.fw_address_handler*, %struct.fw_address_handler** %4, align 8
  %94 = getelementptr inbounds %struct.fw_address_handler, %struct.fw_address_handler* %93, i32 0, i32 2
  %95 = call i32 @list_add_tail_rcu(i32* %94, i32* @address_handler_list)
  store i32 0, i32* %7, align 4
  br label %97

96:                                               ; preds = %84
  br label %51

97:                                               ; preds = %92, %51
  %98 = call i32 @spin_unlock(i32* @address_handler_list_lock)
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %97, %41
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @is_in_fcp_region(i32, i32) #1

declare dso_local %struct.fw_address_handler* @lookup_overlapping_address_handler(i32*, i32, i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
