; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_check_reg_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/exynos/extr_exynos_drm_g2d.c_g2d_check_reg_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g2d_data = type { i32 }
%struct.g2d_cmdlist_node = type { %struct.g2d_buf_info, %struct.g2d_cmdlist* }
%struct.g2d_buf_info = type { %struct.g2d_buf_desc*, i32* }
%struct.g2d_buf_desc = type { i32, i64, i64, i64, i64, i64 }
%struct.g2d_cmdlist = type { i32, i32* }

@G2D_VALID_START = common dso_local global i32 0, align 4
@G2D_VALID_END = common dso_local global i32 0, align 4
@BUF_TYPE_USERPTR = common dso_local global i32 0, align 4
@G2D_BUF_USERPTR = common dso_local global i32 0, align 4
@BUF_TYPE_GEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Bad register offset: 0x%lx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g2d_data*, %struct.g2d_cmdlist_node*, i32, i32)* @g2d_check_reg_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g2d_check_reg_offset(%struct.g2d_data* %0, %struct.g2d_cmdlist_node* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.g2d_data*, align 8
  %7 = alloca %struct.g2d_cmdlist_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.g2d_cmdlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.g2d_buf_info*, align 8
  %15 = alloca %struct.g2d_buf_desc*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.g2d_data* %0, %struct.g2d_data** %6, align 8
  store %struct.g2d_cmdlist_node* %1, %struct.g2d_cmdlist_node** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.g2d_cmdlist_node*, %struct.g2d_cmdlist_node** %7, align 8
  %19 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %18, i32 0, i32 1
  %20 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %19, align 8
  store %struct.g2d_cmdlist* %20, %struct.g2d_cmdlist** %10, align 8
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %224, %4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %227

25:                                               ; preds = %21
  %26 = load %struct.g2d_cmdlist_node*, %struct.g2d_cmdlist_node** %7, align 8
  %27 = getelementptr inbounds %struct.g2d_cmdlist_node, %struct.g2d_cmdlist_node* %26, i32 0, i32 0
  store %struct.g2d_buf_info* %27, %struct.g2d_buf_info** %14, align 8
  %28 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %10, align 8
  %29 = getelementptr inbounds %struct.g2d_cmdlist, %struct.g2d_cmdlist* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %31, 1
  %33 = mul nsw i32 2, %32
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %12, align 4
  %35 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %10, align 8
  %36 = getelementptr inbounds %struct.g2d_cmdlist, %struct.g2d_cmdlist* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 4095
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @G2D_VALID_START, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %25
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @G2D_VALID_END, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %46, %25
  br label %228

51:                                               ; preds = %46
  %52 = load i32, i32* %11, align 4
  %53 = srem i32 %52, 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %228

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  switch i32 %57, label %218 [
    i32 133, label %58
    i32 130, label %58
    i32 141, label %58
    i32 138, label %58
    i32 134, label %58
    i32 135, label %58
    i32 128, label %103
    i32 136, label %103
    i32 132, label %127
    i32 140, label %127
    i32 131, label %154
    i32 139, label %154
    i32 129, label %186
    i32 137, label %186
  ]

58:                                               ; preds = %56, %56, %56, %56, %56, %56
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br label %228

62:                                               ; preds = %58
  %63 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @g2d_get_reg_type(%struct.g2d_data* %63, i32 %64)
  store i32 %65, i32* %16, align 4
  %66 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %10, align 8
  %67 = getelementptr inbounds %struct.g2d_cmdlist, %struct.g2d_cmdlist* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, -2147483648
  %74 = ashr i32 %73, 31
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %62
  %77 = load i32, i32* @BUF_TYPE_USERPTR, align 4
  %78 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %14, align 8
  %79 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %16, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load i32, i32* @G2D_BUF_USERPTR, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %10, align 8
  %87 = getelementptr inbounds %struct.g2d_cmdlist, %struct.g2d_cmdlist* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = and i32 %92, %85
  store i32 %93, i32* %91, align 4
  br label %102

94:                                               ; preds = %62
  %95 = load i32, i32* @BUF_TYPE_GEM, align 4
  %96 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %14, align 8
  %97 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %96, i32 0, i32 1
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  br label %102

102:                                              ; preds = %94, %76
  br label %223

103:                                              ; preds = %56, %56
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  br label %228

107:                                              ; preds = %103
  %108 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %109 = load i32, i32* %11, align 4
  %110 = call i32 @g2d_get_reg_type(%struct.g2d_data* %108, i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %14, align 8
  %112 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %111, i32 0, i32 0
  %113 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %112, align 8
  %114 = load i32, i32* %16, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %113, i64 %115
  store %struct.g2d_buf_desc* %116, %struct.g2d_buf_desc** %15, align 8
  %117 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %10, align 8
  %118 = getelementptr inbounds %struct.g2d_cmdlist, %struct.g2d_cmdlist* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %15, align 8
  %126 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %223

127:                                              ; preds = %56, %56
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %228

131:                                              ; preds = %127
  %132 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @g2d_get_reg_type(%struct.g2d_data* %132, i32 %133)
  store i32 %134, i32* %16, align 4
  %135 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %14, align 8
  %136 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %135, i32 0, i32 0
  %137 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %136, align 8
  %138 = load i32, i32* %16, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %137, i64 %139
  store %struct.g2d_buf_desc* %140, %struct.g2d_buf_desc** %15, align 8
  %141 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %10, align 8
  %142 = getelementptr inbounds %struct.g2d_cmdlist, %struct.g2d_cmdlist* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %12, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  store i64 %149, i64* %17, align 8
  %150 = load i64, i64* %17, align 8
  %151 = and i64 %150, 15
  %152 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %15, align 8
  %153 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %152, i32 0, i32 1
  store i64 %151, i64* %153, align 8
  br label %223

154:                                              ; preds = %56, %56
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %228

158:                                              ; preds = %154
  %159 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %160 = load i32, i32* %11, align 4
  %161 = call i32 @g2d_get_reg_type(%struct.g2d_data* %159, i32 %160)
  store i32 %161, i32* %16, align 4
  %162 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %14, align 8
  %163 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %162, i32 0, i32 0
  %164 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %163, align 8
  %165 = load i32, i32* %16, align 4
  %166 = zext i32 %165 to i64
  %167 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %164, i64 %166
  store %struct.g2d_buf_desc* %167, %struct.g2d_buf_desc** %15, align 8
  %168 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %10, align 8
  %169 = getelementptr inbounds %struct.g2d_cmdlist, %struct.g2d_cmdlist* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %12, align 4
  %172 = add nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %170, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  store i64 %176, i64* %17, align 8
  %177 = load i64, i64* %17, align 8
  %178 = and i64 %177, 8191
  %179 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %15, align 8
  %180 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %179, i32 0, i32 2
  store i64 %178, i64* %180, align 8
  %181 = load i64, i64* %17, align 8
  %182 = and i64 %181, 536805376
  %183 = lshr i64 %182, 16
  %184 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %15, align 8
  %185 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  br label %223

186:                                              ; preds = %56, %56
  %187 = load i32, i32* %9, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %186
  br label %228

190:                                              ; preds = %186
  %191 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %192 = load i32, i32* %11, align 4
  %193 = call i32 @g2d_get_reg_type(%struct.g2d_data* %191, i32 %192)
  store i32 %193, i32* %16, align 4
  %194 = load %struct.g2d_buf_info*, %struct.g2d_buf_info** %14, align 8
  %195 = getelementptr inbounds %struct.g2d_buf_info, %struct.g2d_buf_info* %194, i32 0, i32 0
  %196 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %195, align 8
  %197 = load i32, i32* %16, align 4
  %198 = zext i32 %197 to i64
  %199 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %196, i64 %198
  store %struct.g2d_buf_desc* %199, %struct.g2d_buf_desc** %15, align 8
  %200 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %10, align 8
  %201 = getelementptr inbounds %struct.g2d_cmdlist, %struct.g2d_cmdlist* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  store i64 %208, i64* %17, align 8
  %209 = load i64, i64* %17, align 8
  %210 = and i64 %209, 8191
  %211 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %15, align 8
  %212 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %211, i32 0, i32 4
  store i64 %210, i64* %212, align 8
  %213 = load i64, i64* %17, align 8
  %214 = and i64 %213, 536805376
  %215 = lshr i64 %214, 16
  %216 = load %struct.g2d_buf_desc*, %struct.g2d_buf_desc** %15, align 8
  %217 = getelementptr inbounds %struct.g2d_buf_desc, %struct.g2d_buf_desc* %216, i32 0, i32 5
  store i64 %215, i64* %217, align 8
  br label %223

218:                                              ; preds = %56
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %228

222:                                              ; preds = %218
  br label %223

223:                                              ; preds = %222, %190, %158, %131, %107, %102
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %13, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %13, align 4
  br label %21

227:                                              ; preds = %21
  store i32 0, i32* %5, align 4
  br label %243

228:                                              ; preds = %221, %189, %157, %130, %106, %61, %55, %50
  %229 = load %struct.g2d_data*, %struct.g2d_data** %6, align 8
  %230 = getelementptr inbounds %struct.g2d_data, %struct.g2d_data* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.g2d_cmdlist*, %struct.g2d_cmdlist** %10, align 8
  %233 = getelementptr inbounds %struct.g2d_cmdlist, %struct.g2d_cmdlist* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = sext i32 %238 to i64
  %240 = call i32 @dev_err(i32 %231, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %239)
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %5, align 4
  br label %243

243:                                              ; preds = %228, %227
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @g2d_get_reg_type(%struct.g2d_data*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
