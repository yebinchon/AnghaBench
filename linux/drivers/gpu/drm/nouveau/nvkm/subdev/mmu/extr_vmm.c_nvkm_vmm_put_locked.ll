; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_put_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_put_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_vmm_page* }
%struct.nvkm_vmm_page = type { i32 }
%struct.nvkm_vma = type { i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32* }

@NVKM_VMA_PAGE_NONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvkm_vmm_put_locked(%struct.nvkm_vmm* %0, %struct.nvkm_vma* %1) #0 {
  %3 = alloca %struct.nvkm_vmm*, align 8
  %4 = alloca %struct.nvkm_vma*, align 8
  %5 = alloca %struct.nvkm_vmm_page*, align 8
  %6 = alloca %struct.nvkm_vma*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %3, align 8
  store %struct.nvkm_vma* %1, %struct.nvkm_vma** %4, align 8
  %12 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %13 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %15, align 8
  store %struct.nvkm_vmm_page* %16, %struct.nvkm_vmm_page** %5, align 8
  %17 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  store %struct.nvkm_vma* %17, %struct.nvkm_vma** %6, align 8
  %18 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %19 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @BUG_ON(i64 %20)
  %22 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %23 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %22, i32 0, i32 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %28 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %131, label %31

31:                                               ; preds = %26, %2
  br label %32

32:                                               ; preds = %128, %31
  %33 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %34 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %33, i32 0, i32 10
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %7, align 4
  %38 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %39 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  %41 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %42 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %9, align 8
  %44 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %45 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %10, align 8
  %47 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %48 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %82, %32
  %51 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %52 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %53 = call %struct.nvkm_vma* @node(%struct.nvkm_vma* %51, %struct.nvkm_vma* %52)
  store %struct.nvkm_vma* %53, %struct.nvkm_vma** %6, align 8
  %54 = icmp ne %struct.nvkm_vma* %53, null
  br i1 %54, label %55, label %80

55:                                               ; preds = %50
  %56 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %57 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %56, i32 0, i32 9
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %80

60:                                               ; preds = %55
  %61 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %62 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %68 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %67, i32 0, i32 10
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  %71 = zext i1 %70 to i32
  %72 = load i32, i32* %7, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %66
  %75 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %76 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp eq i64 %77, %78
  br label %80

80:                                               ; preds = %74, %66, %60, %55, %50
  %81 = phi i1 [ false, %66 ], [ false, %60 ], [ false, %55 ], [ false, %50 ], [ %79, %74 ]
  br i1 %81, label %82, label %88

82:                                               ; preds = %80
  %83 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %84 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %11, align 8
  br label %50

88:                                               ; preds = %80
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %93 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %5, align 8
  %94 = load i64, i64* %9, align 8
  %95 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %93, i64 %94
  %96 = load i64, i64* %10, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %99 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %98, i32 0, i32 7
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  %104 = zext i1 %103 to i32
  %105 = call i32 @nvkm_vmm_ptes_unmap_put(%struct.nvkm_vmm* %92, %struct.nvkm_vmm_page* %95, i64 %96, i64 %97, i64 %100, i32 %104)
  br label %119

106:                                              ; preds = %88
  %107 = load i64, i64* %9, align 8
  %108 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %106
  %111 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %112 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %5, align 8
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %112, i64 %113
  %115 = load i64, i64* %10, align 8
  %116 = load i64, i64* %11, align 8
  %117 = call i32 @nvkm_vmm_ptes_put(%struct.nvkm_vmm* %111, %struct.nvkm_vmm_page* %114, i64 %115, i64 %116)
  br label %118

118:                                              ; preds = %110, %106
  br label %119

119:                                              ; preds = %118, %91
  br label %120

120:                                              ; preds = %119
  %121 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %122 = icmp ne %struct.nvkm_vma* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %125 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %124, i32 0, i32 9
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br label %128

128:                                              ; preds = %123, %120
  %129 = phi i1 [ false, %120 ], [ %127, %123 ]
  br i1 %129, label %32, label %130

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130, %26
  %132 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  store %struct.nvkm_vma* %132, %struct.nvkm_vma** %6, align 8
  br label %133

133:                                              ; preds = %153, %131
  %134 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %135 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %142

138:                                              ; preds = %133
  %139 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %140 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %141 = call i32 @nvkm_vmm_unmap_region(%struct.nvkm_vmm* %139, %struct.nvkm_vma* %140)
  br label %142

142:                                              ; preds = %138, %133
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %145 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %146 = call %struct.nvkm_vma* @node(%struct.nvkm_vma* %144, %struct.nvkm_vma* %145)
  store %struct.nvkm_vma* %146, %struct.nvkm_vma** %6, align 8
  %147 = icmp ne %struct.nvkm_vma* %146, null
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = load %struct.nvkm_vma*, %struct.nvkm_vma** %6, align 8
  %150 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %149, i32 0, i32 9
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br label %153

153:                                              ; preds = %148, %143
  %154 = phi i1 [ false, %143 ], [ %152, %148 ]
  br i1 %154, label %133, label %155

155:                                              ; preds = %153
  %156 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %157 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %156, i32 0, i32 7
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %155
  %161 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %162 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %161, i32 0, i32 8
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %160
  %166 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %167 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %5, align 8
  %168 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %169 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %167, i64 %170
  %172 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %173 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %172, i32 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %176 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @nvkm_vmm_ptes_sparse_put(%struct.nvkm_vmm* %166, %struct.nvkm_vmm_page* %171, i64 %174, i64 %177)
  br label %194

179:                                              ; preds = %160, %155
  %180 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %181 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %180, i32 0, i32 7
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %193

184:                                              ; preds = %179
  %185 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %186 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %187 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %190 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %189, i32 0, i32 5
  %191 = load i64, i64* %190, align 8
  %192 = call i32 @nvkm_vmm_ptes_sparse(%struct.nvkm_vmm* %185, i64 %188, i64 %191, i32 0)
  br label %193

193:                                              ; preds = %184, %179
  br label %194

194:                                              ; preds = %193, %165
  %195 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %196 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %197 = call i32 @nvkm_vmm_node_remove(%struct.nvkm_vmm* %195, %struct.nvkm_vma* %196)
  %198 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %199 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %200 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %199, i32 0, i32 2
  store i64 %198, i64* %200, align 8
  %201 = load i64, i64* @NVKM_VMA_PAGE_NONE, align 8
  %202 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %203 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %202, i32 0, i32 1
  store i64 %201, i64* %203, align 8
  %204 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %205 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %204, i32 0, i32 3
  store i32 0, i32* %205, align 8
  %206 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %207 = getelementptr inbounds %struct.nvkm_vma, %struct.nvkm_vma* %206, i32 0, i32 4
  store i32 0, i32* %207, align 4
  %208 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %3, align 8
  %209 = load %struct.nvkm_vma*, %struct.nvkm_vma** %4, align 8
  %210 = call i32 @nvkm_vmm_put_region(%struct.nvkm_vmm* %208, %struct.nvkm_vma* %209)
  ret void
}

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local %struct.nvkm_vma* @node(%struct.nvkm_vma*, %struct.nvkm_vma*) #1

declare dso_local i32 @nvkm_vmm_ptes_unmap_put(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i64, i64, i64, i32) #1

declare dso_local i32 @nvkm_vmm_ptes_put(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i64, i64) #1

declare dso_local i32 @nvkm_vmm_unmap_region(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

declare dso_local i32 @nvkm_vmm_ptes_sparse_put(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i64, i64) #1

declare dso_local i32 @nvkm_vmm_ptes_sparse(%struct.nvkm_vmm*, i64, i64, i32) #1

declare dso_local i32 @nvkm_vmm_node_remove(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

declare dso_local i32 @nvkm_vmm_put_region(%struct.nvkm_vmm*, %struct.nvkm_vma*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
