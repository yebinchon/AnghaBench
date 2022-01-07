; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___verify_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/videobuf2/extr_videobuf2-v4l2.c___verify_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_buffer = type { i64, i32, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32 }

@VB2_MEMORY_USERPTR = common dso_local global i64 0, align 8
@VB2_MEMORY_DMABUF = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*, %struct.v4l2_buffer*)* @__verify_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__verify_length(%struct.vb2_buffer* %0, %struct.v4l2_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_buffer*, align 8
  %5 = alloca %struct.v4l2_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %4, align 8
  store %struct.v4l2_buffer* %1, %struct.v4l2_buffer** %5, align 8
  %9 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @V4L2_TYPE_IS_OUTPUT(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %159

15:                                               ; preds = %2
  %16 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @V4L2_TYPE_IS_MULTIPLANAR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %130

21:                                               ; preds = %15
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %126, %21
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %25 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %129

28:                                               ; preds = %22
  %29 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VB2_MEMORY_USERPTR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VB2_MEMORY_DMABUF, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %34, %28
  %41 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  br label %59

50:                                               ; preds = %34
  %51 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %52 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  br label %59

59:                                               ; preds = %50, %40
  %60 = phi i32 [ %49, %40 ], [ %58, %50 ]
  store i32 %60, i32* %6, align 4
  %61 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %59
  %72 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  br label %83

81:                                               ; preds = %59
  %82 = load i32, i32* %6, align 4
  br label %83

83:                                               ; preds = %81, %71
  %84 = phi i32 [ %80, %71 ], [ %82, %81 ]
  store i32 %84, i32* %7, align 4
  %85 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ugt i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %159

99:                                               ; preds = %83
  %100 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ugt i32 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %99
  %111 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %112 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp uge i32 %119, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %110
  %123 = load i32, i32* @EINVAL, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %159

125:                                              ; preds = %110, %99
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = add i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %22

129:                                              ; preds = %22
  br label %158

130:                                              ; preds = %15
  %131 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %132 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @VB2_MEMORY_USERPTR, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %140

136:                                              ; preds = %130
  %137 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %138 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  br label %147

140:                                              ; preds = %130
  %141 = load %struct.vb2_buffer*, %struct.vb2_buffer** %4, align 8
  %142 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %141, i32 0, i32 1
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i64 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  br label %147

147:                                              ; preds = %140, %136
  %148 = phi i32 [ %139, %136 ], [ %146, %140 ]
  store i32 %148, i32* %6, align 4
  %149 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %5, align 8
  %150 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %6, align 4
  %153 = icmp ugt i32 %151, %152
  br i1 %153, label %154, label %157

154:                                              ; preds = %147
  %155 = load i32, i32* @EINVAL, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %3, align 4
  br label %159

157:                                              ; preds = %147
  br label %158

158:                                              ; preds = %157, %129
  store i32 0, i32* %3, align 4
  br label %159

159:                                              ; preds = %158, %154, %122, %96, %14
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local i32 @V4L2_TYPE_IS_OUTPUT(i32) #1

declare dso_local i64 @V4L2_TYPE_IS_MULTIPLANAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
