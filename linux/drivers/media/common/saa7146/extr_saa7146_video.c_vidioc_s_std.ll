; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/saa7146/extr_saa7146_video.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7146_dev = type { %struct.TYPE_3__*, %struct.saa7146_vv* }
%struct.TYPE_3__ = type { i32, i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.saa7146_vv = type { i32, %struct.TYPE_4__*, i32*, i32* }
%struct.saa7146_fh = type { %struct.saa7146_dev* }

@.str = private unnamed_addr constant [14 x i8] c"VIDIOC_S_STD\0A\00", align 1
@STATUS_CAPTURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"cannot change video standard while streaming capture is active\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@STATUS_OVERLAY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"suspending video failed. aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"VIDIOC_S_STD: standard not found\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"VIDIOC_S_STD: set to standard to '%s'\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7146_dev*, align 8
  %9 = alloca %struct.saa7146_vv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.saa7146_fh*
  %15 = getelementptr inbounds %struct.saa7146_fh, %struct.saa7146_fh* %14, i32 0, i32 0
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %15, align 8
  store %struct.saa7146_dev* %16, %struct.saa7146_dev** %8, align 8
  %17 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %18 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %17, i32 0, i32 1
  %19 = load %struct.saa7146_vv*, %struct.saa7146_vv** %18, align 8
  store %struct.saa7146_vv* %19, %struct.saa7146_vv** %9, align 8
  store i32 0, i32* %10, align 4
  %20 = call i32 (i8*, ...) @DEB_EE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %22 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @STATUS_CAPTURE, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @STATUS_CAPTURE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = call i32 @DEB_D(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %146

32:                                               ; preds = %3
  %33 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %34 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @STATUS_OVERLAY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %55

39:                                               ; preds = %32
  %40 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %41 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %40, i32 0, i32 3
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %44 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  %45 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %46 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @saa7146_stop_preview(i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 0, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = call i32 @DEB_D(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %4, align 4
  br label %146

54:                                               ; preds = %39
  br label %55

55:                                               ; preds = %54, %32
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %80, %55
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %59 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %83

64:                                               ; preds = %56
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %67 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %65, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %64
  br label %83

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %56

83:                                               ; preds = %78, %56
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %86 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %85, i32 0, i32 0
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %84, %89
  br i1 %90, label %91, label %120

91:                                               ; preds = %83
  %92 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %93 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i64 %98
  %100 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %101 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %100, i32 0, i32 1
  store %struct.TYPE_4__* %99, %struct.TYPE_4__** %101, align 8
  %102 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %103 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)*, i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)** %105, align 8
  %107 = icmp ne i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)* null, %106
  br i1 %107, label %108, label %119

108:                                              ; preds = %91
  %109 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %110 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 1
  %113 = load i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)*, i32 (%struct.saa7146_dev*, %struct.TYPE_4__*)** %112, align 8
  %114 = load %struct.saa7146_dev*, %struct.saa7146_dev** %8, align 8
  %115 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %116 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %115, i32 0, i32 1
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %116, align 8
  %118 = call i32 %113(%struct.saa7146_dev* %114, %struct.TYPE_4__* %117)
  br label %119

119:                                              ; preds = %108, %91
  store i32 1, i32* %10, align 4
  br label %120

120:                                              ; preds = %119, %83
  %121 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %122 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %121, i32 0, i32 2
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %127 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @saa7146_start_preview(i32* %128)
  %130 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %131 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %125, %120
  %133 = load i32, i32* %10, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %139, label %135

135:                                              ; preds = %132
  %136 = call i32 (i8*, ...) @DEB_EE(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %4, align 4
  br label %146

139:                                              ; preds = %132
  %140 = load %struct.saa7146_vv*, %struct.saa7146_vv** %9, align 8
  %141 = getelementptr inbounds %struct.saa7146_vv, %struct.saa7146_vv* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i8*, ...) @DEB_EE(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  store i32 0, i32* %4, align 4
  br label %146

146:                                              ; preds = %139, %135, %51, %28
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @DEB_EE(i8*, ...) #1

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @saa7146_stop_preview(i32*) #1

declare dso_local i32 @saa7146_start_preview(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
