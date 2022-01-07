; ModuleID = '/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_source_link_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/hwtracing/stm/extr_core.c_stm_source_link_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.stm_source_device = type { i32 }
%struct.stm_device = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @stm_source_link_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @stm_source_link_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.stm_source_device*, align 8
  %11 = alloca %struct.stm_device*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.stm_source_device* @to_stm_source_device(%struct.device* %13)
  store %struct.stm_source_device* %14, %struct.stm_source_device** %10, align 8
  %15 = load %struct.stm_source_device*, %struct.stm_source_device** %10, align 8
  %16 = call i32 @stm_source_link_drop(%struct.stm_source_device* %15)
  %17 = load i8*, i8** %8, align 8
  %18 = call %struct.stm_device* @stm_find_device(i8* %17)
  store %struct.stm_device* %18, %struct.stm_device** %11, align 8
  %19 = load %struct.stm_device*, %struct.stm_device** %11, align 8
  %20 = icmp ne %struct.stm_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %5, align 8
  br label %48

24:                                               ; preds = %4
  %25 = load %struct.stm_device*, %struct.stm_device** %11, align 8
  %26 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %25, i32 0, i32 0
  %27 = call i32 @pm_runtime_get(i32* %26)
  %28 = load %struct.stm_source_device*, %struct.stm_source_device** %10, align 8
  %29 = load %struct.stm_device*, %struct.stm_device** %11, align 8
  %30 = call i32 @stm_source_link_add(%struct.stm_source_device* %28, %struct.stm_device* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load %struct.stm_device*, %struct.stm_device** %11, align 8
  %35 = getelementptr inbounds %struct.stm_device, %struct.stm_device* %34, i32 0, i32 0
  %36 = call i32 @pm_runtime_put_autosuspend(i32* %35)
  %37 = load %struct.stm_device*, %struct.stm_device** %11, align 8
  %38 = call i32 @stm_put_device(%struct.stm_device* %37)
  br label %39

39:                                               ; preds = %33, %24
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = sext i32 %40 to i64
  br label %46

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i64 [ %43, %42 ], [ %45, %44 ]
  store i64 %47, i64* %5, align 8
  br label %48

48:                                               ; preds = %46, %21
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local %struct.stm_source_device* @to_stm_source_device(%struct.device*) #1

declare dso_local i32 @stm_source_link_drop(%struct.stm_source_device*) #1

declare dso_local %struct.stm_device* @stm_find_device(i8*) #1

declare dso_local i32 @pm_runtime_get(i32*) #1

declare dso_local i32 @stm_source_link_add(%struct.stm_source_device*, %struct.stm_device*) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32*) #1

declare dso_local i32 @stm_put_device(%struct.stm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
