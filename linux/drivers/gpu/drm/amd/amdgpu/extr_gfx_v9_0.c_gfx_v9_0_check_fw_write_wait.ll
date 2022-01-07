; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_check_fw_write_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdgpu/extr_gfx_v9_0.c_gfx_v9_0_check_fw_write_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpu_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [107 x i8] c"Warning: check cp_fw_version and update it to realize \09\09\09      GRBM requires 1-cycle delay in cp firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdgpu_device*)* @gfx_v9_0_check_fw_write_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfx_v9_0_check_fw_write_wait(%struct.amdgpu_device* %0) #0 {
  %2 = alloca %struct.amdgpu_device*, align 8
  store %struct.amdgpu_device* %0, %struct.amdgpu_device** %2, align 8
  %3 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %4 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 0, i32* %5, align 4
  %6 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %7 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 0, i32* %8, align 4
  %9 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %10 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %12, 421
  br i1 %13, label %32, label %14

14:                                               ; preds = %1
  %15 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %16 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 46
  br i1 %19, label %32, label %20

20:                                               ; preds = %14
  %21 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %22 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 183
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %28 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 46
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %20, %14, %1
  %33 = call i32 @DRM_WARN_ONCE(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %32, %26
  %35 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %36 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %218 [
    i32 130, label %38
    i32 129, label %83
    i32 128, label %128
    i32 131, label %173
  ]

38:                                               ; preds = %34
  %39 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %40 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = icmp sge i32 %42, 156
  br i1 %43, label %44, label %66

44:                                               ; preds = %38
  %45 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %46 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %48, 42
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %52 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 177
  br i1 %55, label %56, label %66

56:                                               ; preds = %50
  %57 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %58 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = icmp sge i32 %60, 42
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %64 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  store i32 1, i32* %65, align 4
  br label %66

66:                                               ; preds = %62, %56, %50, %44, %38
  %67 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %68 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = icmp sge i32 %70, 403
  br i1 %71, label %72, label %82

72:                                               ; preds = %66
  %73 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %74 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = icmp sge i32 %76, 42
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %80 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  store i32 1, i32* %81, align 4
  br label %82

82:                                               ; preds = %78, %72, %66
  br label %219

83:                                               ; preds = %34
  %84 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %85 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = icmp sge i32 %87, 156
  br i1 %88, label %89, label %111

89:                                               ; preds = %83
  %90 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %91 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 4
  %94 = icmp sge i32 %93, 44
  br i1 %94, label %95, label %111

95:                                               ; preds = %89
  %96 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %97 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp sge i32 %99, 178
  br i1 %100, label %101, label %111

101:                                              ; preds = %95
  %102 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %103 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 4
  %106 = icmp sge i32 %105, 44
  br i1 %106, label %107, label %111

107:                                              ; preds = %101
  %108 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %109 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %107, %101, %95, %89, %83
  %112 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %113 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %115, 406
  br i1 %116, label %117, label %127

117:                                              ; preds = %111
  %118 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %119 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp sge i32 %121, 44
  br i1 %122, label %123, label %127

123:                                              ; preds = %117
  %124 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %125 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  br label %127

127:                                              ; preds = %123, %117, %111
  br label %219

128:                                              ; preds = %34
  %129 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %130 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 6
  %132 = load i32, i32* %131, align 4
  %133 = icmp sge i32 %132, 156
  br i1 %133, label %134, label %156

134:                                              ; preds = %128
  %135 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %136 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 7
  %138 = load i32, i32* %137, align 4
  %139 = icmp sge i32 %138, 44
  br i1 %139, label %140, label %156

140:                                              ; preds = %134
  %141 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %142 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = icmp sge i32 %144, 178
  br i1 %145, label %146, label %156

146:                                              ; preds = %140
  %147 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %148 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = icmp sge i32 %150, 44
  br i1 %151, label %152, label %156

152:                                              ; preds = %146
  %153 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %154 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 4
  br label %156

156:                                              ; preds = %152, %146, %140, %134, %128
  %157 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %158 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp sge i32 %160, 407
  br i1 %161, label %162, label %172

162:                                              ; preds = %156
  %163 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %164 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 4
  %167 = icmp sge i32 %166, 44
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  %169 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %170 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 1
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %168, %162, %156
  br label %219

173:                                              ; preds = %34
  %174 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %175 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 4
  %178 = icmp sge i32 %177, 156
  br i1 %178, label %179, label %201

179:                                              ; preds = %173
  %180 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %181 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = icmp sge i32 %183, 42
  br i1 %184, label %185, label %201

185:                                              ; preds = %179
  %186 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %187 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = icmp sge i32 %189, 177
  br i1 %190, label %191, label %201

191:                                              ; preds = %185
  %192 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %193 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 4
  %196 = icmp sge i32 %195, 42
  br i1 %196, label %197, label %201

197:                                              ; preds = %191
  %198 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %199 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 0
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %197, %191, %185, %179, %173
  %202 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %203 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = icmp sge i32 %205, 402
  br i1 %206, label %207, label %217

207:                                              ; preds = %201
  %208 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %209 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = icmp sge i32 %211, 42
  br i1 %212, label %213, label %217

213:                                              ; preds = %207
  %214 = load %struct.amdgpu_device*, %struct.amdgpu_device** %2, align 8
  %215 = getelementptr inbounds %struct.amdgpu_device, %struct.amdgpu_device* %214, i32 0, i32 1
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 1
  store i32 1, i32* %216, align 4
  br label %217

217:                                              ; preds = %213, %207, %201
  br label %219

218:                                              ; preds = %34
  br label %219

219:                                              ; preds = %218, %217, %172, %127, %82
  ret void
}

declare dso_local i32 @DRM_WARN_ONCE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
