; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_gfx_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_si.c_si_vm_packet3_gfx_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_device = type { i32 }
%struct.radeon_cs_packet = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PACKET3_SET_CONFIG_REG_START = common dso_local global i64 0, align 8
@PACKET3_SET_CONFIG_REG_END = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"bad PACKET3_SET_CONFIG_REG\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid GFX packet3: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeon_device*, i64*, %struct.radeon_cs_packet*)* @si_vm_packet3_gfx_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si_vm_packet3_gfx_check(%struct.radeon_device* %0, i64* %1, %struct.radeon_cs_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radeon_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.radeon_cs_packet*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.radeon_device* %0, %struct.radeon_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.radeon_cs_packet* %2, %struct.radeon_cs_packet** %7, align 8
  %15 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %16 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add i64 %17, 1
  store i64 %18, i64* %9, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load i64, i64* %9, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %24 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %194 [
    i32 146, label %26
    i32 141, label %26
    i32 175, label %26
    i32 151, label %26
    i32 168, label %26
    i32 167, label %26
    i32 178, label %26
    i32 128, label %26
    i32 176, label %26
    i32 177, label %26
    i32 144, label %26
    i32 137, label %26
    i32 174, label %26
    i32 142, label %26
    i32 158, label %26
    i32 163, label %26
    i32 152, label %26
    i32 166, label %26
    i32 172, label %26
    i32 150, label %26
    i32 157, label %26
    i32 165, label %26
    i32 164, label %26
    i32 145, label %26
    i32 161, label %26
    i32 134, label %26
    i32 159, label %26
    i32 160, label %26
    i32 162, label %26
    i32 147, label %26
    i32 130, label %26
    i32 149, label %26
    i32 143, label %26
    i32 133, label %26
    i32 156, label %26
    i32 155, label %26
    i32 154, label %26
    i32 139, label %26
    i32 138, label %26
    i32 136, label %26
    i32 135, label %26
    i32 153, label %26
    i32 131, label %26
    i32 132, label %26
    i32 148, label %26
    i32 171, label %27
    i32 129, label %46
    i32 173, label %95
    i32 170, label %114
    i32 140, label %133
    i32 169, label %185
  ]

26:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3, %3
  br label %201

27:                                               ; preds = %3
  %28 = load i64, i64* %10, align 8
  %29 = and i64 %28, 3840
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %27
  %32 = load i64*, i64** %6, align 8
  %33 = load i64, i64* %9, align 8
  %34 = add i64 %33, 3
  %35 = getelementptr inbounds i64, i64* %32, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = mul i64 %36, 4
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = call i32 @si_vm_reg_valid(i64 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %202

44:                                               ; preds = %31
  br label %45

45:                                               ; preds = %44, %27
  br label %201

46:                                               ; preds = %3
  %47 = load i64, i64* %10, align 8
  %48 = and i64 %47, 3840
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = load i64*, i64** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, 1
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  %55 = load i64, i64* %54, align 8
  %56 = mul i64 %55, 4
  store i64 %56, i64* %11, align 8
  %57 = load i64, i64* %10, align 8
  %58 = and i64 %57, 65536
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %50
  %61 = load i64, i64* %11, align 8
  %62 = call i32 @si_vm_reg_valid(i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %202

67:                                               ; preds = %60
  br label %93

68:                                               ; preds = %50
  store i64 0, i64* %14, align 8
  br label %69

69:                                               ; preds = %89, %68
  %70 = load i64, i64* %14, align 8
  %71 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %72 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = icmp ult i64 %70, %75
  br i1 %76, label %77, label %92

77:                                               ; preds = %69
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %14, align 8
  %80 = mul i64 4, %79
  %81 = add i64 %78, %80
  store i64 %81, i64* %13, align 8
  %82 = load i64, i64* %13, align 8
  %83 = call i32 @si_vm_reg_valid(i64 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %77
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %4, align 4
  br label %202

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88
  %90 = load i64, i64* %14, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %14, align 8
  br label %69

92:                                               ; preds = %69
  br label %93

93:                                               ; preds = %92, %67
  br label %94

94:                                               ; preds = %93, %46
  br label %201

95:                                               ; preds = %3
  %96 = load i64, i64* %10, align 8
  %97 = and i64 %96, 256
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %95
  %100 = load i64*, i64** %6, align 8
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %101, 5
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = mul i64 %104, 4
  store i64 %105, i64* %13, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @si_vm_reg_valid(i64 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %99
  %110 = load i32, i32* @EINVAL, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %202

112:                                              ; preds = %99
  br label %113

113:                                              ; preds = %112, %95
  br label %201

114:                                              ; preds = %3
  %115 = load i64, i64* %10, align 8
  %116 = and i64 %115, 2
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %132

118:                                              ; preds = %114
  %119 = load i64*, i64** %6, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, 3
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = mul i64 %123, 4
  store i64 %124, i64* %13, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i32 @si_vm_reg_valid(i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %118
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %4, align 4
  br label %202

131:                                              ; preds = %118
  br label %132

132:                                              ; preds = %131, %114
  br label %201

133:                                              ; preds = %3
  %134 = load i64, i64* %10, align 8
  %135 = shl i64 %134, 2
  %136 = load i64, i64* @PACKET3_SET_CONFIG_REG_START, align 8
  %137 = add i64 %135, %136
  store i64 %137, i64* %11, align 8
  %138 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %139 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 4, %140
  %142 = sext i32 %141 to i64
  %143 = load i64, i64* %11, align 8
  %144 = add i64 %142, %143
  %145 = sub i64 %144, 4
  store i64 %145, i64* %12, align 8
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* @PACKET3_SET_CONFIG_REG_START, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %157, label %149

149:                                              ; preds = %133
  %150 = load i64, i64* %11, align 8
  %151 = load i64, i64* @PACKET3_SET_CONFIG_REG_END, align 8
  %152 = icmp uge i64 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %12, align 8
  %155 = load i64, i64* @PACKET3_SET_CONFIG_REG_END, align 8
  %156 = icmp uge i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %153, %149, %133
  %158 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %159 = load i32, i32* @EINVAL, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %202

161:                                              ; preds = %153
  store i64 0, i64* %14, align 8
  br label %162

162:                                              ; preds = %181, %161
  %163 = load i64, i64* %14, align 8
  %164 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %165 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = sext i32 %166 to i64
  %168 = icmp ult i64 %163, %167
  br i1 %168, label %169, label %184

169:                                              ; preds = %162
  %170 = load i64, i64* %11, align 8
  %171 = load i64, i64* %14, align 8
  %172 = mul i64 4, %171
  %173 = add i64 %170, %172
  store i64 %173, i64* %13, align 8
  %174 = load i64, i64* %13, align 8
  %175 = call i32 @si_vm_reg_valid(i64 %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %180, label %177

177:                                              ; preds = %169
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %4, align 4
  br label %202

180:                                              ; preds = %169
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* %14, align 8
  %183 = add i64 %182, 1
  store i64 %183, i64* %14, align 8
  br label %162

184:                                              ; preds = %162
  br label %201

185:                                              ; preds = %3
  %186 = load i64*, i64** %6, align 8
  %187 = load i64, i64* %9, align 8
  %188 = call i32 @si_vm_packet3_cp_dma_check(i64* %186, i64 %187)
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %8, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %4, align 4
  br label %202

193:                                              ; preds = %185
  br label %201

194:                                              ; preds = %3
  %195 = load %struct.radeon_cs_packet*, %struct.radeon_cs_packet** %7, align 8
  %196 = getelementptr inbounds %struct.radeon_cs_packet, %struct.radeon_cs_packet* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i8*, ...) @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %197)
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %4, align 4
  br label %202

201:                                              ; preds = %193, %184, %132, %113, %94, %45, %26
  store i32 0, i32* %4, align 4
  br label %202

202:                                              ; preds = %201, %194, %191, %177, %157, %128, %109, %85, %64, %41
  %203 = load i32, i32* %4, align 4
  ret i32 %203
}

declare dso_local i32 @si_vm_reg_valid(i64) #1

declare dso_local i32 @DRM_ERROR(i8*, ...) #1

declare dso_local i32 @si_vm_packet3_cp_dma_check(i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
