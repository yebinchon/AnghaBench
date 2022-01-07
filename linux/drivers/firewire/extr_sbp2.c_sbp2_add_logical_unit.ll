; ModuleID = '/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_add_logical_unit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/firewire/extr_sbp2.c_sbp2_add_logical_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_target = type { i32, i32 }
%struct.sbp2_logical_unit = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, %struct.sbp2_target*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.sbp2_logical_unit*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sbp2_status_write = common dso_local global i32 0, align 4
@fw_high_memory_region = common dso_local global i32 0, align 4
@INVALID_LOGIN_ID = common dso_local global i32 0, align 4
@sbp2_login = common dso_local global i32 0, align 4
@sbp2_lu_workfn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbp2_target*, i32)* @sbp2_add_logical_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_add_logical_unit(%struct.sbp2_target* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sbp2_target*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbp2_logical_unit*, align 8
  store %struct.sbp2_target* %0, %struct.sbp2_target** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.sbp2_logical_unit* @kmalloc(i32 80, i32 %7)
  store %struct.sbp2_logical_unit* %8, %struct.sbp2_logical_unit** %6, align 8
  %9 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %10 = icmp ne %struct.sbp2_logical_unit* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %16 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %15, i32 0, i32 10
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 256, i32* %17, align 8
  %18 = load i32, i32* @sbp2_status_write, align 4
  %19 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %20 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %19, i32 0, i32 10
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  store i32 %18, i32* %21, align 8
  %22 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %23 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %24 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %23, i32 0, i32 10
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store %struct.sbp2_logical_unit* %22, %struct.sbp2_logical_unit** %25, align 8
  %26 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %27 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %26, i32 0, i32 10
  %28 = call i64 @fw_core_add_address_handler(%struct.TYPE_2__* %27, i32* @fw_high_memory_region)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %14
  %31 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %32 = call i32 @kfree(%struct.sbp2_logical_unit* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %71

35:                                               ; preds = %14
  %36 = load %struct.sbp2_target*, %struct.sbp2_target** %4, align 8
  %37 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %38 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %37, i32 0, i32 9
  store %struct.sbp2_target* %36, %struct.sbp2_target** %38, align 8
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, 65535
  %41 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %42 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @INVALID_LOGIN_ID, align 4
  %44 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %45 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %47 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %46, i32 0, i32 7
  store i64 0, i64* %47, align 8
  %48 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %49 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %51 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %50, i32 0, i32 2
  store i32 0, i32* %51, align 8
  %52 = load %struct.sbp2_target*, %struct.sbp2_target** %4, align 8
  %53 = getelementptr inbounds %struct.sbp2_target, %struct.sbp2_target* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %57 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %56, i32 0, i32 6
  %58 = call i32 @INIT_LIST_HEAD(i32* %57)
  %59 = load i32, i32* @sbp2_login, align 4
  %60 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %61 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %60, i32 0, i32 5
  store i32 %59, i32* %61, align 4
  %62 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %63 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %62, i32 0, i32 4
  %64 = load i32, i32* @sbp2_lu_workfn, align 4
  %65 = call i32 @INIT_DELAYED_WORK(i32* %63, i32 %64)
  %66 = load %struct.sbp2_logical_unit*, %struct.sbp2_logical_unit** %6, align 8
  %67 = getelementptr inbounds %struct.sbp2_logical_unit, %struct.sbp2_logical_unit* %66, i32 0, i32 3
  %68 = load %struct.sbp2_target*, %struct.sbp2_target** %4, align 8
  %69 = getelementptr inbounds %struct.sbp2_target, %struct.sbp2_target* %68, i32 0, i32 0
  %70 = call i32 @list_add_tail(i32* %67, i32* %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %35, %30, %11
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.sbp2_logical_unit* @kmalloc(i32, i32) #1

declare dso_local i64 @fw_core_add_address_handler(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @kfree(%struct.sbp2_logical_unit*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
