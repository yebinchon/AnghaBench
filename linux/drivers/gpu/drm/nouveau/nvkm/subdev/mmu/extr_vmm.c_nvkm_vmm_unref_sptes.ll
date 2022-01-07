; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unref_sptes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_unref_sptes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm_iter = type { %struct.nvkm_vmm*, %struct.TYPE_3__* }
%struct.nvkm_vmm = type { i32 }
%struct.TYPE_3__ = type { %struct.nvkm_vmm_desc* }
%struct.nvkm_vmm_pt = type { i32*, i32*, i32* }
%struct.nvkm_vmm_desc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.nvkm_vmm*, i32, i32, i32)*, i32 (%struct.nvkm_vmm*, i32, i32, i32)* }

@NVKM_VMM_PTE_SPTES = common dso_local global i32 0, align 4
@NVKM_VMM_PTE_VALID = common dso_local global i32 0, align 4
@NVKM_VMM_PTE_SPARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"LPTE %05x: U -> S %d PTEs\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"LPTE %05x: U -> I %d PTEs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_vmm_iter*, %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_desc*, i32, i32)* @nvkm_vmm_unref_sptes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvkm_vmm_unref_sptes(%struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_desc* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.nvkm_vmm_iter*, align 8
  %7 = alloca %struct.nvkm_vmm_pt*, align 8
  %8 = alloca %struct.nvkm_vmm_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvkm_vmm_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nvkm_vmm*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.nvkm_vmm_iter* %0, %struct.nvkm_vmm_iter** %6, align 8
  store %struct.nvkm_vmm_pt* %1, %struct.nvkm_vmm_pt** %7, align 8
  store %struct.nvkm_vmm_desc* %2, %struct.nvkm_vmm_desc** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %19 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %20 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 -1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %23, align 8
  store %struct.nvkm_vmm_desc* %24, %struct.nvkm_vmm_desc** %11, align 8
  %25 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %8, align 8
  %26 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %11, align 8
  %29 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = shl i32 1, %32
  store i32 %33, i32* %13, align 4
  %34 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %35 = getelementptr inbounds %struct.nvkm_vmm_iter, %struct.nvkm_vmm_iter* %34, i32 0, i32 0
  %36 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %35, align 8
  store %struct.nvkm_vmm* %36, %struct.nvkm_vmm** %14, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %13, align 4
  %39 = sub nsw i32 %38, 1
  %40 = and i32 %37, %39
  store i32 %40, i32* %15, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %12, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %16, align 4
  br label %44

44:                                               ; preds = %65, %5
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %15, align 4
  %50 = sub nsw i32 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @min(i32 %50, i32 %51)
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %55 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %16, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sub nsw i32 %60, %53
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %63, %62
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %47
  store i32 0, i32* %15, align 4
  %66 = load i32, i32* %16, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %16, align 4
  br label %44

68:                                               ; preds = %44
  %69 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %70 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %68
  br label %226

76:                                               ; preds = %68
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %12, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %17, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %224, %76
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %16, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %226

84:                                               ; preds = %80
  %85 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %86 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %17, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @NVKM_VMM_PTE_SPTES, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %121

95:                                               ; preds = %84
  store i32 1, i32* %10, align 4
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %115, %95
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %104 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @NVKM_VMM_PTE_SPTES, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %102
  br label %120

114:                                              ; preds = %102
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %10, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %10, align 4
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %9, align 4
  br label %98

120:                                              ; preds = %113, %98
  br label %224

121:                                              ; preds = %84
  %122 = load i32, i32* @NVKM_VMM_PTE_VALID, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %125 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %123
  store i32 %131, i32* %129, align 4
  store i32 1, i32* %10, align 4
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %134

134:                                              ; preds = %161, %121
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* %16, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %166

138:                                              ; preds = %134
  %139 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %140 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @NVKM_VMM_PTE_SPTES, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %138
  br label %166

150:                                              ; preds = %138
  %151 = load i32, i32* @NVKM_VMM_PTE_VALID, align 4
  %152 = xor i32 %151, -1
  %153 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %154 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %9, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %152
  store i32 %160, i32* %158, align 4
  br label %161

161:                                              ; preds = %150
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  %164 = load i32, i32* %9, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %9, align 4
  br label %134

166:                                              ; preds = %149, %134
  %167 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %168 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %17, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @NVKM_VMM_PTE_SPARSE, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %196

177:                                              ; preds = %166
  %178 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %10, align 4
  %181 = call i32 @TRA(%struct.nvkm_vmm_iter* %178, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %11, align 8
  %183 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %182, i32 0, i32 1
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32 (%struct.nvkm_vmm*, i32, i32, i32)*, i32 (%struct.nvkm_vmm*, i32, i32, i32)** %185, align 8
  %187 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %188 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %189 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 %186(%struct.nvkm_vmm* %187, i32 %192, i32 %193, i32 %194)
  br label %223

196:                                              ; preds = %166
  %197 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %11, align 8
  %198 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %197, i32 0, i32 1
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i32 (%struct.nvkm_vmm*, i32, i32, i32)*, i32 (%struct.nvkm_vmm*, i32, i32, i32)** %200, align 8
  %202 = icmp ne i32 (%struct.nvkm_vmm*, i32, i32, i32)* %201, null
  br i1 %202, label %203, label %222

203:                                              ; preds = %196
  %204 = load %struct.nvkm_vmm_iter*, %struct.nvkm_vmm_iter** %6, align 8
  %205 = load i32, i32* %17, align 4
  %206 = load i32, i32* %10, align 4
  %207 = call i32 @TRA(%struct.nvkm_vmm_iter* %204, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %205, i32 %206)
  %208 = load %struct.nvkm_vmm_desc*, %struct.nvkm_vmm_desc** %11, align 8
  %209 = getelementptr inbounds %struct.nvkm_vmm_desc, %struct.nvkm_vmm_desc* %208, i32 0, i32 1
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32 (%struct.nvkm_vmm*, i32, i32, i32)*, i32 (%struct.nvkm_vmm*, i32, i32, i32)** %211, align 8
  %213 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %14, align 8
  %214 = load %struct.nvkm_vmm_pt*, %struct.nvkm_vmm_pt** %7, align 8
  %215 = getelementptr inbounds %struct.nvkm_vmm_pt, %struct.nvkm_vmm_pt* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %10, align 4
  %221 = call i32 %212(%struct.nvkm_vmm* %213, i32 %218, i32 %219, i32 %220)
  br label %222

222:                                              ; preds = %203, %196
  br label %223

223:                                              ; preds = %222, %177
  br label %224

224:                                              ; preds = %223, %120
  %225 = load i32, i32* %9, align 4
  store i32 %225, i32* %17, align 4
  br label %80

226:                                              ; preds = %75, %80
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @TRA(%struct.nvkm_vmm_iter*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
