; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_crc_control_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_debugfs_crc.c_crc_control_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.drm_crtc* }
%struct.drm_crtc = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8** (%struct.drm_crtc*, i64*)*, i32 (%struct.drm_crtc*, i8*, i64*)* }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%s*\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @crc_control_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @crc_control_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_crtc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %12 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %11, i32 0, i32 0
  %13 = load %struct.drm_crtc*, %struct.drm_crtc** %12, align 8
  store %struct.drm_crtc* %13, %struct.drm_crtc** %6, align 8
  %14 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %15 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i8** (%struct.drm_crtc*, i64*)*, i8** (%struct.drm_crtc*, i64*)** %17, align 8
  %19 = icmp ne i8** (%struct.drm_crtc*, i64*)* %18, null
  br i1 %19, label %20, label %88

20:                                               ; preds = %2
  %21 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %22 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i8** (%struct.drm_crtc*, i64*)*, i8** (%struct.drm_crtc*, i64*)** %24, align 8
  %26 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %27 = call i8** %25(%struct.drm_crtc* %26, i64* %7)
  store i8** %27, i8*** %8, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %20
  %31 = load i8**, i8*** %8, align 8
  %32 = icmp ne i8** %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %30, %20
  br label %89

34:                                               ; preds = %30
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %84, %34
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %87

40:                                               ; preds = %35
  %41 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %42 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32 (%struct.drm_crtc*, i8*, i64*)*, i32 (%struct.drm_crtc*, i8*, i64*)** %44, align 8
  %46 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %47 = load i8**, i8*** %8, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8*, i8** %47, i64 %49
  %51 = load i8*, i8** %50, align 8
  %52 = call i32 %45(%struct.drm_crtc* %46, i8* %51, i64* %9)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %83, label %54

54:                                               ; preds = %40
  %55 = load i8**, i8*** %8, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8*, i8** %55, i64 %57
  %59 = load i8*, i8** %58, align 8
  %60 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %61 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @strcmp(i8* %59, i8* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %68 = load i8**, i8*** %8, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8*, i8** %68, i64 %70
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @seq_printf(%struct.seq_file* %67, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %72)
  br label %82

74:                                               ; preds = %54
  %75 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %76 = load i8**, i8*** %8, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8*, i8** %76, i64 %78
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @seq_printf(%struct.seq_file* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %80)
  br label %82

82:                                               ; preds = %74, %66
  br label %83

83:                                               ; preds = %82, %40
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %35

87:                                               ; preds = %35
  br label %88

88:                                               ; preds = %87, %2
  store i32 0, i32* %3, align 4
  br label %96

89:                                               ; preds = %33
  %90 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %91 = load %struct.drm_crtc*, %struct.drm_crtc** %6, align 8
  %92 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 @seq_printf(%struct.seq_file* %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %89, %88
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
