; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_xfer_unk84xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_ctxnv50.c_nv50_gr_construct_xfer_unk84xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_grctx = type { %struct.nvkm_device* }
%struct.nvkm_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvkm_grctx*)* @nv50_gr_construct_xfer_unk84xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv50_gr_construct_xfer_unk84xx(%struct.nvkm_grctx* %0) #0 {
  %2 = alloca %struct.nvkm_grctx*, align 8
  %3 = alloca %struct.nvkm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.nvkm_grctx* %0, %struct.nvkm_grctx** %2, align 8
  %5 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %6 = getelementptr inbounds %struct.nvkm_grctx, %struct.nvkm_grctx* %5, i32 0, i32 0
  %7 = load %struct.nvkm_device*, %struct.nvkm_device** %6, align 8
  store %struct.nvkm_device* %7, %struct.nvkm_device** %3, align 8
  %8 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %9 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %13 [
    i32 80, label %11
    i32 134, label %12
    i32 152, label %12
    i32 168, label %12
    i32 170, label %12
    i32 172, label %12
    i32 175, label %12
  ]

11:                                               ; preds = %1
  store i32 4096, i32* %4, align 4
  br label %14

12:                                               ; preds = %1, %1, %1, %1, %1, %1
  store i32 7680, i32* %4, align 4
  br label %14

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %13, %12, %11
  %15 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %16 = call i32 @xf_emit(%struct.nvkm_grctx* %15, i32 1, i32 0)
  %17 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %18 = call i32 @xf_emit(%struct.nvkm_grctx* %17, i32 1, i32 4)
  %19 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %20 = call i32 @xf_emit(%struct.nvkm_grctx* %19, i32 1, i32 0)
  %21 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %22 = call i32 @xf_emit(%struct.nvkm_grctx* %21, i32 1, i32 0)
  %23 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %24 = call i32 @xf_emit(%struct.nvkm_grctx* %23, i32 1, i32 0)
  %25 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %26 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_NVA3F(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %32 = call i32 @xf_emit(%struct.nvkm_grctx* %31, i32 31, i32 0)
  br label %45

33:                                               ; preds = %14
  %34 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %35 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp sge i32 %36, 160
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %40 = call i32 @xf_emit(%struct.nvkm_grctx* %39, i32 15, i32 0)
  br label %44

41:                                               ; preds = %33
  %42 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %43 = call i32 @xf_emit(%struct.nvkm_grctx* %42, i32 16, i32 0)
  br label %44

44:                                               ; preds = %41, %38
  br label %45

45:                                               ; preds = %44, %30
  %46 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %47 = call i32 @xf_emit(%struct.nvkm_grctx* %46, i32 2, i32 0)
  %48 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %49 = call i32 @xf_emit(%struct.nvkm_grctx* %48, i32 1, i32 4)
  %50 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %51 = call i32 @xf_emit(%struct.nvkm_grctx* %50, i32 1, i32 4)
  %52 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %53 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sge i32 %54, 160
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %58 = call i32 @xf_emit(%struct.nvkm_grctx* %57, i32 1, i32 50462976)
  br label %62

59:                                               ; preds = %45
  %60 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %61 = call i32 @xf_emit(%struct.nvkm_grctx* %60, i32 1, i32 6324352)
  br label %62

62:                                               ; preds = %59, %56
  %63 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %64 = call i32 @xf_emit(%struct.nvkm_grctx* %63, i32 1, i32 0)
  %65 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %66 = call i32 @xf_emit(%struct.nvkm_grctx* %65, i32 1, i32 0)
  %67 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %68 = call i32 @xf_emit(%struct.nvkm_grctx* %67, i32 2, i32 0)
  %69 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %70 = call i32 @xf_emit(%struct.nvkm_grctx* %69, i32 1, i32 4)
  %71 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %72 = call i32 @xf_emit(%struct.nvkm_grctx* %71, i32 1, i32 0)
  %73 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %74 = call i32 @xf_emit(%struct.nvkm_grctx* %73, i32 1, i32 0)
  %75 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %76 = call i32 @xf_emit(%struct.nvkm_grctx* %75, i32 1, i32 4)
  %77 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %78 = call i32 @xf_emit(%struct.nvkm_grctx* %77, i32 1, i32 4)
  %79 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %80 = call i32 @xf_emit(%struct.nvkm_grctx* %79, i32 1, i32 128)
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %62
  %84 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @xf_emit(%struct.nvkm_grctx* %84, i32 1, i32 %85)
  br label %87

87:                                               ; preds = %83, %62
  %88 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %89 = call i32 @xf_emit(%struct.nvkm_grctx* %88, i32 1, i32 4)
  %90 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %91 = call i32 @xf_emit(%struct.nvkm_grctx* %90, i32 1, i32 0)
  %92 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %93 = call i32 @xf_emit(%struct.nvkm_grctx* %92, i32 1, i32 0)
  %94 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %95 = call i32 @xf_emit(%struct.nvkm_grctx* %94, i32 31, i32 0)
  %96 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %97 = call i32 @xf_emit(%struct.nvkm_grctx* %96, i32 1, i32 0)
  %98 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %99 = call i32 @xf_emit(%struct.nvkm_grctx* %98, i32 1, i32 0)
  %100 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %101 = call i32 @xf_emit(%struct.nvkm_grctx* %100, i32 1, i32 0)
  %102 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %103 = call i32 @xf_emit(%struct.nvkm_grctx* %102, i32 1, i32 4)
  %104 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %105 = call i32 @xf_emit(%struct.nvkm_grctx* %104, i32 1, i32 128)
  %106 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %107 = call i32 @xf_emit(%struct.nvkm_grctx* %106, i32 1, i32 4)
  %108 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %109 = call i32 @xf_emit(%struct.nvkm_grctx* %108, i32 1, i32 50462976)
  %110 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %111 = call i32 @xf_emit(%struct.nvkm_grctx* %110, i32 1, i32 3)
  %112 = load i32, i32* %4, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %87
  %115 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %116 = load i32, i32* %4, align 4
  %117 = call i32 @xf_emit(%struct.nvkm_grctx* %115, i32 1, i32 %116)
  br label %118

118:                                              ; preds = %114, %87
  %119 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %120 = call i32 @xf_emit(%struct.nvkm_grctx* %119, i32 1, i32 4)
  %121 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %122 = call i32 @xf_emit(%struct.nvkm_grctx* %121, i32 1, i32 0)
  %123 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %124 = call i32 @xf_emit(%struct.nvkm_grctx* %123, i32 1, i32 0)
  %125 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %126 = call i32 @xf_emit(%struct.nvkm_grctx* %125, i32 1, i32 0)
  %127 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %128 = call i32 @xf_emit(%struct.nvkm_grctx* %127, i32 1, i32 0)
  %129 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %130 = call i32 @xf_emit(%struct.nvkm_grctx* %129, i32 1, i32 4)
  %131 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %132 = call i32 @xf_emit(%struct.nvkm_grctx* %131, i32 1, i32 3)
  %133 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %134 = call i32 @xf_emit(%struct.nvkm_grctx* %133, i32 1, i32 0)
  %135 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %136 = call i32 @xf_emit(%struct.nvkm_grctx* %135, i32 1, i32 0)
  %137 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %138 = call i32 @xf_emit(%struct.nvkm_grctx* %137, i32 1, i32 0)
  %139 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %140 = call i32 @xf_emit(%struct.nvkm_grctx* %139, i32 1, i32 4)
  %141 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %142 = call i32 @xf_emit(%struct.nvkm_grctx* %141, i32 1, i32 0)
  %143 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %144 = call i32 @xf_emit(%struct.nvkm_grctx* %143, i32 1, i32 0)
  %145 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %146 = call i32 @xf_emit(%struct.nvkm_grctx* %145, i32 1, i32 0)
  %147 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %148 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp eq i32 %149, 148
  br i1 %150, label %156, label %151

151:                                              ; preds = %118
  %152 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %153 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 150
  br i1 %155, label %156, label %159

156:                                              ; preds = %151, %118
  %157 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %158 = call i32 @xf_emit(%struct.nvkm_grctx* %157, i32 4128, i32 0)
  br label %181

159:                                              ; preds = %151
  %160 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %161 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = icmp slt i32 %162, 160
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %166 = call i32 @xf_emit(%struct.nvkm_grctx* %165, i32 2592, i32 0)
  br label %180

167:                                              ; preds = %159
  %168 = load %struct.nvkm_device*, %struct.nvkm_device** %3, align 8
  %169 = getelementptr inbounds %struct.nvkm_device, %struct.nvkm_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i64 @IS_NVA3F(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %176, label %173

173:                                              ; preds = %167
  %174 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %175 = call i32 @xf_emit(%struct.nvkm_grctx* %174, i32 528, i32 0)
  br label %179

176:                                              ; preds = %167
  %177 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %178 = call i32 @xf_emit(%struct.nvkm_grctx* %177, i32 1040, i32 0)
  br label %179

179:                                              ; preds = %176, %173
  br label %180

180:                                              ; preds = %179, %164
  br label %181

181:                                              ; preds = %180, %156
  %182 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %183 = call i32 @xf_emit(%struct.nvkm_grctx* %182, i32 1, i32 0)
  %184 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %185 = call i32 @xf_emit(%struct.nvkm_grctx* %184, i32 1, i32 4)
  %186 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %187 = call i32 @xf_emit(%struct.nvkm_grctx* %186, i32 1, i32 3)
  %188 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %189 = call i32 @xf_emit(%struct.nvkm_grctx* %188, i32 1, i32 0)
  %190 = load %struct.nvkm_grctx*, %struct.nvkm_grctx** %2, align 8
  %191 = call i32 @xf_emit(%struct.nvkm_grctx* %190, i32 1, i32 0)
  ret void
}

declare dso_local i32 @xf_emit(%struct.nvkm_grctx*, i32, i32) #1

declare dso_local i64 @IS_NVA3F(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
