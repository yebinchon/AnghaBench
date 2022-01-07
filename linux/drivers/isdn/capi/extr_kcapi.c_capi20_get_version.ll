; ModuleID = '/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_capi20_get_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/isdn/capi/extr_kcapi.c_capi20_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capi_version = type { i32 }
%struct.capi_ctr = type { i64, i32 }

@driver_version = common dso_local global %struct.capi_version zeroinitializer, align 4
@CAPI_NOERROR = common dso_local global i32 0, align 4
@capi_controller_lock = common dso_local global i32 0, align 4
@CAPI_CTR_RUNNING = common dso_local global i64 0, align 8
@CAPI_REGNOTINSTALLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @capi20_get_version(i64 %0, %struct.capi_version* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.capi_version*, align 8
  %6 = alloca %struct.capi_ctr*, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.capi_version* %1, %struct.capi_version** %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.capi_version*, %struct.capi_version** %5, align 8
  %12 = bitcast %struct.capi_version* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 bitcast (%struct.capi_version* @driver_version to i8*), i64 4, i1 false)
  %13 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = call i32 @mutex_lock(i32* @capi_controller_lock)
  %16 = load i64, i64* %4, align 8
  %17 = call %struct.capi_ctr* @get_capi_ctr_by_nr(i64 %16)
  store %struct.capi_ctr* %17, %struct.capi_ctr** %6, align 8
  %18 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %19 = icmp ne %struct.capi_ctr* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %22 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CAPI_CTR_RUNNING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.capi_version*, %struct.capi_version** %5, align 8
  %28 = load %struct.capi_ctr*, %struct.capi_ctr** %6, align 8
  %29 = getelementptr inbounds %struct.capi_ctr, %struct.capi_ctr* %28, i32 0, i32 1
  %30 = call i32 @memcpy(%struct.capi_version* %27, i32* %29, i32 4)
  %31 = load i32, i32* @CAPI_NOERROR, align 4
  store i32 %31, i32* %7, align 4
  br label %34

32:                                               ; preds = %20, %14
  %33 = load i32, i32* @CAPI_REGNOTINSTALLED, align 4
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %32, %26
  %35 = call i32 @mutex_unlock(i32* @capi_controller_lock)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %10
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local %struct.capi_ctr* @get_capi_ctr_by_nr(i64) #2

declare dso_local i32 @memcpy(%struct.capi_version*, i32*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
