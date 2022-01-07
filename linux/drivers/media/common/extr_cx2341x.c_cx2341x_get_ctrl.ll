; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/extr_cx2341x.c_cx2341x_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_mpeg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx2341x_mpeg_params*, %struct.v4l2_ext_control*)* @cx2341x_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx2341x_get_ctrl(%struct.cx2341x_mpeg_params* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx2341x_mpeg_params*, align 8
  %5 = alloca %struct.v4l2_ext_control*, align 8
  store %struct.cx2341x_mpeg_params* %0, %struct.cx2341x_mpeg_params** %4, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %5, align 8
  %6 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %7 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %213 [
    i32 153, label %9
    i32 158, label %15
    i32 157, label %21
    i32 161, label %27
    i32 156, label %33
    i32 155, label %39
    i32 159, label %45
    i32 160, label %51
    i32 154, label %57
    i32 133, label %63
    i32 138, label %69
    i32 134, label %75
    i32 131, label %81
    i32 132, label %87
    i32 136, label %93
    i32 137, label %99
    i32 135, label %105
    i32 128, label %111
    i32 130, label %117
    i32 129, label %123
    i32 140, label %129
    i32 139, label %135
    i32 143, label %141
    i32 144, label %147
    i32 146, label %153
    i32 149, label %159
    i32 141, label %165
    i32 142, label %171
    i32 145, label %177
    i32 147, label %183
    i32 148, label %189
    i32 150, label %195
    i32 151, label %201
    i32 152, label %207
  ]

9:                                                ; preds = %2
  %10 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %11 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %10, i32 0, i32 33
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %14 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  br label %216

15:                                               ; preds = %2
  %16 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %17 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %16, i32 0, i32 32
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %20 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  br label %216

21:                                               ; preds = %2
  %22 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %23 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %22, i32 0, i32 31
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %26 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %216

27:                                               ; preds = %2
  %28 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %29 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %28, i32 0, i32 30
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %216

33:                                               ; preds = %2
  %34 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %35 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %34, i32 0, i32 29
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %38 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %216

39:                                               ; preds = %2
  %40 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %41 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %40, i32 0, i32 28
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  br label %216

45:                                               ; preds = %2
  %46 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %47 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %46, i32 0, i32 27
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %50 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %216

51:                                               ; preds = %2
  %52 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %53 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %52, i32 0, i32 26
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %56 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %216

57:                                               ; preds = %2
  %58 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %59 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %58, i32 0, i32 25
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  br label %216

63:                                               ; preds = %2
  %64 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %65 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %64, i32 0, i32 24
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %68 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %216

69:                                               ; preds = %2
  %70 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %71 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %70, i32 0, i32 23
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %74 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  br label %216

75:                                               ; preds = %2
  %76 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %77 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %76, i32 0, i32 22
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %216

81:                                               ; preds = %2
  %82 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %83 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %82, i32 0, i32 21
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %86 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %216

87:                                               ; preds = %2
  %88 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %89 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %88, i32 0, i32 20
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %92 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %216

93:                                               ; preds = %2
  %94 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %95 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %94, i32 0, i32 19
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  br label %216

99:                                               ; preds = %2
  %100 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %101 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %100, i32 0, i32 18
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %104 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %216

105:                                              ; preds = %2
  %106 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %107 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %106, i32 0, i32 17
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %110 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %216

111:                                              ; preds = %2
  %112 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %113 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %112, i32 0, i32 16
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %116 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %115, i32 0, i32 1
  store i32 %114, i32* %116, align 4
  br label %216

117:                                              ; preds = %2
  %118 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %119 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %118, i32 0, i32 15
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %122 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  br label %216

123:                                              ; preds = %2
  %124 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %125 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %124, i32 0, i32 14
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %128 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  br label %216

129:                                              ; preds = %2
  %130 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %131 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %130, i32 0, i32 13
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %134 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  br label %216

135:                                              ; preds = %2
  %136 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %137 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %136, i32 0, i32 12
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %140 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  br label %216

141:                                              ; preds = %2
  %142 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %143 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %142, i32 0, i32 11
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %146 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %145, i32 0, i32 1
  store i32 %144, i32* %146, align 4
  br label %216

147:                                              ; preds = %2
  %148 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %149 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %148, i32 0, i32 10
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %152 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %151, i32 0, i32 1
  store i32 %150, i32* %152, align 4
  br label %216

153:                                              ; preds = %2
  %154 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %155 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %158 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  br label %216

159:                                              ; preds = %2
  %160 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %161 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %160, i32 0, i32 8
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %164 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %216

165:                                              ; preds = %2
  %166 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %167 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %170 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %216

171:                                              ; preds = %2
  %172 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %173 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %176 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %175, i32 0, i32 1
  store i32 %174, i32* %176, align 4
  br label %216

177:                                              ; preds = %2
  %178 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %179 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %182 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %181, i32 0, i32 1
  store i32 %180, i32* %182, align 4
  br label %216

183:                                              ; preds = %2
  %184 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %185 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %188 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  br label %216

189:                                              ; preds = %2
  %190 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %191 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %194 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  br label %216

195:                                              ; preds = %2
  %196 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %197 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %200 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %199, i32 0, i32 1
  store i32 %198, i32* %200, align 4
  br label %216

201:                                              ; preds = %2
  %202 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %203 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %206 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %205, i32 0, i32 1
  store i32 %204, i32* %206, align 4
  br label %216

207:                                              ; preds = %2
  %208 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %4, align 8
  %209 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %212 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  br label %216

213:                                              ; preds = %2
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %3, align 4
  br label %217

216:                                              ; preds = %207, %201, %195, %189, %183, %177, %171, %165, %159, %153, %147, %141, %135, %129, %123, %117, %111, %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %45, %39, %33, %27, %21, %15, %9
  store i32 0, i32* %3, align 4
  br label %217

217:                                              ; preds = %216, %213
  %218 = load i32, i32* %3, align 4
  ret i32 %218
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
