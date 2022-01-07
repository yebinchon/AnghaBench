; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_get_timeline_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_fence.c_radeon_fence_get_timeline_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_fence = type { i32 }
%struct.radeon_fence = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"radeon.gfx\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"radeon.cp1\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"radeon.cp2\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"radeon.dma\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"radeon.dma1\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"radeon.uvd\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"radeon.vce1\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"radeon.vce2\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"radeon.unk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dma_fence*)* @radeon_fence_get_timeline_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @radeon_fence_get_timeline_name(%struct.dma_fence* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dma_fence*, align 8
  %4 = alloca %struct.radeon_fence*, align 8
  store %struct.dma_fence* %0, %struct.dma_fence** %3, align 8
  %5 = load %struct.dma_fence*, %struct.dma_fence** %3, align 8
  %6 = call %struct.radeon_fence* @to_radeon_fence(%struct.dma_fence* %5)
  store %struct.radeon_fence* %6, %struct.radeon_fence** %4, align 8
  %7 = load %struct.radeon_fence*, %struct.radeon_fence** %4, align 8
  %8 = getelementptr inbounds %struct.radeon_fence, %struct.radeon_fence* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %18 [
    i32 130, label %10
    i32 135, label %11
    i32 134, label %12
    i32 132, label %13
    i32 133, label %14
    i32 131, label %15
    i32 129, label %16
    i32 128, label %17
  ]

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %20

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %20

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %20

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %20

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %20

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %20

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %20

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %20

18:                                               ; preds = %1
  %19 = call i32 @WARN_ON_ONCE(i32 1)
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %20

20:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

declare dso_local %struct.radeon_fence* @to_radeon_fence(%struct.dma_fence*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
