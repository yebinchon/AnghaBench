; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_uvd.c_radeon_uvd_cs_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32 }
%struct.radeon_cs_packet = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Invalid reg 0x%X!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_cs_parser*, %struct.radeon_cs_packet*, i32*, i32*, i32*, i32*)* @radeon_uvd_cs_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_uvd_cs_reg(%struct.radeon_cs_parser* %0, %struct.radeon_cs_packet* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.radeon_cs_parser*, align 8
  %9 = alloca %struct.radeon_cs_packet*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %8, align 8
  store %struct.radeon_cs_packet* %1, %struct.radeon_cs_packet** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %8, align 8
  %17 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %20

20:                                               ; preds = %73, %6
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %9, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %21, %24
  br i1 %25, label %26, label %76

26:                                               ; preds = %20
  %27 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %9, align 8
  %28 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %14, align 4
  %31 = mul nsw i32 %30, 4
  %32 = add nsw i32 %29, %31
  switch i32 %32, label %58 [
    i32 130, label %33
    i32 129, label %38
    i32 131, label %43
    i32 132, label %57
    i32 128, label %57
  ]

33:                                               ; preds = %26
  %34 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %8, align 8
  %35 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  br label %68

38:                                               ; preds = %26
  %39 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %8, align 8
  %40 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %11, align 8
  store i32 %41, i32* %42, align 4
  br label %68

43:                                               ; preds = %26
  %44 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %8, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %12, align 8
  %50 = load i32*, i32** %13, align 8
  %51 = call i32 @radeon_uvd_cs_reloc(%struct.radeon_cs_parser* %44, i32 %46, i32 %48, i32* %49, i32* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %15, align 4
  store i32 %55, i32* %7, align 4
  br label %77

56:                                               ; preds = %43
  br label %68

57:                                               ; preds = %26, %26
  br label %68

58:                                               ; preds = %26
  %59 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %9, align 8
  %60 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %14, align 4
  %63 = mul nsw i32 %62, 4
  %64 = add nsw i32 %61, %63
  %65 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %77

68:                                               ; preds = %57, %56, %38, %33
  %69 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %8, align 8
  %70 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %20

76:                                               ; preds = %20
  store i32 0, i32* %7, align 4
  br label %77

77:                                               ; preds = %76, %58, %54
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @radeon_uvd_cs_reloc(%struct.radeon_cs_parser*, i32, i32, i32*, i32*) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
