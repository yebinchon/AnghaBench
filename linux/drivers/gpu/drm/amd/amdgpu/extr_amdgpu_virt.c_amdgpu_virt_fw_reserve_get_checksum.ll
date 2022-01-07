; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_fw_reserve_get_checksum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_amdgpu_virt.c_amdgpu_virt_fw_reserve_get_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdgpu_virt_fw_reserve_get_checksum(i8* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  store i32 %12, i32* %9, align 4
  store i64 0, i64* %10, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  store i64 0, i64* %10, align 8
  br label %14

14:                                               ; preds = %26, %4
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i8*, i8** %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i32, i32* %9, align 4
  %25 = add i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i64, i64* %10, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %10, align 8
  br label %14

29:                                               ; preds = %14
  %30 = bitcast i32* %8 to i8*
  store i8* %30, i8** %11, align 8
  store i64 0, i64* %10, align 8
  br label %31

31:                                               ; preds = %42, %29
  %32 = load i64, i64* %10, align 8
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i8*, i8** %11, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds i8, i8* %35, i64 %36
  %38 = load i8, i8* %37, align 1
  %39 = zext i8 %38 to i32
  %40 = load i32, i32* %9, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load i64, i64* %10, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %10, align 8
  br label %31

45:                                               ; preds = %31
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
