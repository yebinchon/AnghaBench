; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_bo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/etnaviv/extr_etnaviv_gem_submit.c_submit_bo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.etnaviv_gem_submit = type { i64, %struct.etnaviv_gem_submit_bo* }
%struct.etnaviv_gem_submit_bo = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"invalid buffer index: %u (out of %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.etnaviv_gem_submit*, i64, %struct.etnaviv_gem_submit_bo**)* @submit_bo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @submit_bo(%struct.etnaviv_gem_submit* %0, i64 %1, %struct.etnaviv_gem_submit_bo** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.etnaviv_gem_submit*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.etnaviv_gem_submit_bo**, align 8
  store %struct.etnaviv_gem_submit* %0, %struct.etnaviv_gem_submit** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.etnaviv_gem_submit_bo** %2, %struct.etnaviv_gem_submit_bo*** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %10 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp uge i64 %8, %11
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %16 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %14, i64 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %28

21:                                               ; preds = %3
  %22 = load %struct.etnaviv_gem_submit*, %struct.etnaviv_gem_submit** %5, align 8
  %23 = getelementptr inbounds %struct.etnaviv_gem_submit, %struct.etnaviv_gem_submit* %22, i32 0, i32 1
  %24 = load %struct.etnaviv_gem_submit_bo*, %struct.etnaviv_gem_submit_bo** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.etnaviv_gem_submit_bo, %struct.etnaviv_gem_submit_bo* %24, i64 %25
  %27 = load %struct.etnaviv_gem_submit_bo**, %struct.etnaviv_gem_submit_bo*** %7, align 8
  store %struct.etnaviv_gem_submit_bo* %26, %struct.etnaviv_gem_submit_bo** %27, align 8
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %21, %13
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @DRM_ERROR(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
