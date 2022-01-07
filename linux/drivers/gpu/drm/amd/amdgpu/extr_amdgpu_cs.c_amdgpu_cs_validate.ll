; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_cs.c_amdgpu_cs_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_bo = type { %struct.amdgpu_bo* }
%struct.amdgpu_cs_parser = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.amdgpu_bo*)* @amdgpu_cs_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_cs_validate(i8* %0, %struct.amdgpu_bo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.amdgpu_bo*, align 8
  %6 = alloca %struct.amdgpu_cs_parser*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.amdgpu_bo* %1, %struct.amdgpu_bo** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.amdgpu_cs_parser*
  store %struct.amdgpu_cs_parser* %9, %struct.amdgpu_cs_parser** %6, align 8
  br label %10

10:                                               ; preds = %24, %2
  %11 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %6, align 8
  %12 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %13 = call i32 @amdgpu_cs_bo_validate(%struct.amdgpu_cs_parser* %11, %struct.amdgpu_bo* %12)
  store i32 %13, i32* %7, align 4
  br label %14

14:                                               ; preds = %10
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %6, align 8
  %21 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %22 = call i64 @amdgpu_cs_try_evict(%struct.amdgpu_cs_parser* %20, %struct.amdgpu_bo* %21)
  %23 = icmp ne i64 %22, 0
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %10, label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %44

31:                                               ; preds = %26
  %32 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %33 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %32, i32 0, i32 0
  %34 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %33, align 8
  %35 = icmp ne %struct.amdgpu_bo* %34, null
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.amdgpu_cs_parser*, %struct.amdgpu_cs_parser** %6, align 8
  %38 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %5, align 8
  %39 = getelementptr inbounds %struct.amdgpu_bo, %struct.amdgpu_bo* %38, i32 0, i32 0
  %40 = load %struct.amdgpu_bo*, %struct.amdgpu_bo** %39, align 8
  %41 = call i32 @amdgpu_cs_bo_validate(%struct.amdgpu_cs_parser* %37, %struct.amdgpu_bo* %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %29
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @amdgpu_cs_bo_validate(%struct.amdgpu_cs_parser*, %struct.amdgpu_bo*) #1

declare dso_local i64 @amdgpu_cs_try_evict(%struct.amdgpu_cs_parser*, %struct.amdgpu_bo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
