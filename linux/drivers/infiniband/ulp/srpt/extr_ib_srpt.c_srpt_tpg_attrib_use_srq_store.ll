; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_tpg_attrib_use_srq_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srpt/extr_ib_srpt.c_srpt_tpg_attrib_use_srq_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.se_portal_group = type { i32 }
%struct.srpt_port = type { i32, i32, %struct.TYPE_2__, %struct.srpt_device* }
%struct.TYPE_2__ = type { i64 }
%struct.srpt_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, i8*, i64)* @srpt_tpg_attrib_use_srq_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srpt_tpg_attrib_use_srq_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.se_portal_group*, align 8
  %9 = alloca %struct.srpt_port*, align 8
  %10 = alloca %struct.srpt_device*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.config_item*, %struct.config_item** %5, align 8
  %15 = call %struct.se_portal_group* @attrib_to_tpg(%struct.config_item* %14)
  store %struct.se_portal_group* %15, %struct.se_portal_group** %8, align 8
  %16 = load %struct.se_portal_group*, %struct.se_portal_group** %8, align 8
  %17 = call %struct.srpt_port* @srpt_tpg_to_sport(%struct.se_portal_group* %16)
  store %struct.srpt_port* %17, %struct.srpt_port** %9, align 8
  %18 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %19 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %18, i32 0, i32 3
  %20 = load %struct.srpt_device*, %struct.srpt_device** %19, align 8
  store %struct.srpt_device* %20, %struct.srpt_device** %10, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @kstrtoul(i8* %21, i32 0, i64* %11)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %4, align 4
  br label %83

27:                                               ; preds = %3
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %28, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %83

39:                                               ; preds = %27
  %40 = load %struct.srpt_device*, %struct.srpt_device** %10, align 8
  %41 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock_interruptible(i32* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %4, align 4
  br label %83

47:                                               ; preds = %39
  %48 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %49 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %48, i32 0, i32 1
  %50 = call i32 @mutex_lock_interruptible(i32* %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %78

54:                                               ; preds = %47
  %55 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %56 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %12, align 4
  %58 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %59 = call i32 @srpt_set_enabled(%struct.srpt_port* %58, i32 0)
  %60 = load i64, i64* %11, align 8
  %61 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %62 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.srpt_device*, %struct.srpt_device** %10, align 8
  %65 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %66 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @srpt_use_srq(%struct.srpt_device* %64, i64 %68)
  %70 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @srpt_set_enabled(%struct.srpt_port* %70, i32 %71)
  %73 = load i64, i64* %7, align 8
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %13, align 4
  %75 = load %struct.srpt_port*, %struct.srpt_port** %9, align 8
  %76 = getelementptr inbounds %struct.srpt_port, %struct.srpt_port* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %54, %53
  %79 = load %struct.srpt_device*, %struct.srpt_device** %10, align 8
  %80 = getelementptr inbounds %struct.srpt_device, %struct.srpt_device* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %13, align 4
  store i32 %82, i32* %4, align 4
  br label %83

83:                                               ; preds = %78, %45, %36, %25
  %84 = load i32, i32* %4, align 4
  ret i32 %84
}

declare dso_local %struct.se_portal_group* @attrib_to_tpg(%struct.config_item*) #1

declare dso_local %struct.srpt_port* @srpt_tpg_to_sport(%struct.se_portal_group*) #1

declare dso_local i32 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @srpt_set_enabled(%struct.srpt_port*, i32) #1

declare dso_local i32 @srpt_use_srq(%struct.srpt_device*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
