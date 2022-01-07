; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_kms.h_msm_kms_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/extr_msm_kms.h_msm_kms_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_kms = type { i32*, %struct.msm_kms_funcs*, i32 }
%struct.msm_kms_funcs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_kms*, %struct.msm_kms_funcs*)* @msm_kms_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_kms_init(%struct.msm_kms* %0, %struct.msm_kms_funcs* %1) #0 {
  %3 = alloca %struct.msm_kms*, align 8
  %4 = alloca %struct.msm_kms_funcs*, align 8
  %5 = alloca i32, align 4
  store %struct.msm_kms* %0, %struct.msm_kms** %3, align 8
  store %struct.msm_kms_funcs* %1, %struct.msm_kms_funcs** %4, align 8
  %6 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %7 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %6, i32 0, i32 2
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.msm_kms_funcs*, %struct.msm_kms_funcs** %4, align 8
  %10 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %11 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %10, i32 0, i32 1
  store %struct.msm_kms_funcs* %9, %struct.msm_kms_funcs** %11, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %29, %2
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %15 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ARRAY_SIZE(i32* %16)
  %18 = icmp ult i32 %13, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %12
  %20 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %21 = getelementptr inbounds %struct.msm_kms, %struct.msm_kms* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.msm_kms*, %struct.msm_kms** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @msm_atomic_init_pending_timer(i32* %25, %struct.msm_kms* %26, i32 %27)
  br label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %12

32:                                               ; preds = %12
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @msm_atomic_init_pending_timer(i32*, %struct.msm_kms*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
