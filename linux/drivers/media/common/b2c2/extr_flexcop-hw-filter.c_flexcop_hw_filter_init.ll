; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_hw_filter_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_hw_filter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32, i32, i32 (%struct.flexcop_device*, i32, i32, i64)*, { i32, i64 } (%struct.flexcop_device*, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@pid_filter_308 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flexcop_hw_filter_init(%struct.flexcop_device* %0) #0 {
  %2 = alloca %struct.flexcop_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %2, align 8
  store i32 6, i32* %5, align 4
  %7 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %8 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 6, %9
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %14 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 32, %15
  %17 = load i32, i32* %5, align 4
  %18 = add nsw i32 %17, %16
  store i32 %18, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %27, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @flexcop_pid_control(%struct.flexcop_device* %24, i32 %25, i32 8191, i32 0)
  br label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %19

30:                                               ; preds = %19
  %31 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %32 = call i32 @flexcop_pid_group_filter(%struct.flexcop_device* %31, i32 0, i32 8160)
  %33 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %34 = call i32 @flexcop_pid_group_filter_ctrl(%struct.flexcop_device* %33, i32 0)
  %35 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %36 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %35, i32 0, i32 3
  %37 = load { i32, i64 } (%struct.flexcop_device*, i32)*, { i32, i64 } (%struct.flexcop_device*, i32)** %36, align 8
  %38 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %39 = load i32, i32* @pid_filter_308, align 4
  %40 = call { i32, i64 } %37(%struct.flexcop_device* %38, i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %42 = bitcast %struct.TYPE_5__* %41 to { i32, i64 }*
  %43 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %42, i32 0, i32 0
  %44 = extractvalue { i32, i64 } %40, 0
  store i32 %44, i32* %43, align 8
  %45 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %42, i32 0, i32 1
  %46 = extractvalue { i32, i64 } %40, 1
  store i64 %46, i64* %45, align 8
  %47 = bitcast %struct.TYPE_6__* %4 to i8*
  %48 = bitcast %struct.TYPE_6__* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 16, i1 false)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %54 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %53, i32 0, i32 2
  %55 = load i32 (%struct.flexcop_device*, i32, i32, i64)*, i32 (%struct.flexcop_device*, i32, i32, i64)** %54, align 8
  %56 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %57 = load i32, i32* @pid_filter_308, align 4
  %58 = bitcast %struct.TYPE_6__* %4 to { i32, i64 }*
  %59 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %58, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 %55(%struct.flexcop_device* %56, i32 %57, i32 %60, i64 %62)
  %64 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %65 = call i32 @flexcop_null_filter_ctrl(%struct.flexcop_device* %64, i32 1)
  ret void
}

declare dso_local i32 @flexcop_pid_control(%struct.flexcop_device*, i32, i32, i32) #1

declare dso_local i32 @flexcop_pid_group_filter(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_group_filter_ctrl(%struct.flexcop_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @flexcop_null_filter_ctrl(%struct.flexcop_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
