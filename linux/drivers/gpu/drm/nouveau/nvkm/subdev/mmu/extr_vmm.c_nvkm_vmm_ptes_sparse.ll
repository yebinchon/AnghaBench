; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_sparse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/subdev/mmu/extr_vmm.c_nvkm_vmm_ptes_sparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvkm_vmm = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.nvkm_vmm_page* }
%struct.nvkm_vmm_page = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvkm_vmm*, i32, i32, i32)* @nvkm_vmm_ptes_sparse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvkm_vmm_ptes_sparse(%struct.nvkm_vmm* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvkm_vmm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvkm_vmm_page*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nvkm_vmm* %0, %struct.nvkm_vmm** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %19 = getelementptr inbounds %struct.nvkm_vmm, %struct.nvkm_vmm* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %21, align 8
  store %struct.nvkm_vmm_page* %22, %struct.nvkm_vmm_page** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %13, align 4
  br label %24

24:                                               ; preds = %174, %4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %181

27:                                               ; preds = %24
  br label %28

28:                                               ; preds = %39, %27
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %31, i64 %33
  %35 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = shl i64 1, %36
  %38 = icmp ult i64 %30, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %28

42:                                               ; preds = %28
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %56, %42
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %47 = load i32, i32* %12, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %46, i64 %48
  %50 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = shl i64 1, %51
  %53 = call i32 @IS_ALIGNED(i32 %45, i64 %52)
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %44

59:                                               ; preds = %44
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %120

63:                                               ; preds = %59
  %64 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = sub nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %64, i64 %67
  %69 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = shl i64 1, %70
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %15, align 4
  %75 = call i32 @ALIGN(i32 %73, i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = sub nsw i32 %75, %76
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %16, align 4
  %80 = sub nsw i32 %78, %79
  %81 = load i32, i32* %15, align 4
  %82 = icmp sge i32 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %63
  %84 = load i32, i32* %16, align 4
  %85 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %85, i64 %87
  %89 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = trunc i64 %90 to i32
  %92 = ashr i32 %84, %91
  %93 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %93, i64 %95
  %97 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = shl i32 %92, %99
  store i32 %100, i32* %14, align 4
  br label %119

101:                                              ; preds = %63
  %102 = load i32, i32* %8, align 4
  %103 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %103, i64 %105
  %107 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = ashr i32 %102, %109
  %111 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %111, i64 %113
  %115 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = shl i32 %110, %117
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %101, %83
  br label %138

120:                                              ; preds = %59
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %122, i64 %124
  %126 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = ashr i32 %121, %128
  %130 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %130, i64 %132
  %134 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = shl i32 %129, %136
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %120, %119
  %139 = load i32, i32* %9, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %165

141:                                              ; preds = %138
  %142 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %143 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %144 = load i32, i32* %12, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %143, i64 %145
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @nvkm_vmm_ptes_sparse_get(%struct.nvkm_vmm* %142, %struct.nvkm_vmm_page* %146, i32 %147, i32 %148)
  store i32 %149, i32* %17, align 4
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %141
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %13, align 4
  %155 = sub nsw i32 %153, %154
  store i32 %155, i32* %8, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @nvkm_vmm_ptes_sparse(%struct.nvkm_vmm* %158, i32 %159, i32 %160, i32 0)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load i32, i32* %17, align 4
  store i32 %163, i32* %5, align 4
  br label %182

164:                                              ; preds = %141
  br label %174

165:                                              ; preds = %138
  %166 = load %struct.nvkm_vmm*, %struct.nvkm_vmm** %6, align 8
  %167 = load %struct.nvkm_vmm_page*, %struct.nvkm_vmm_page** %10, align 8
  %168 = load i32, i32* %12, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.nvkm_vmm_page, %struct.nvkm_vmm_page* %167, i64 %169
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %14, align 4
  %173 = call i32 @nvkm_vmm_ptes_sparse_put(%struct.nvkm_vmm* %166, %struct.nvkm_vmm_page* %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %165, %164
  %175 = load i32, i32* %14, align 4
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 %176, %175
  store i32 %177, i32* %8, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %7, align 4
  %180 = add nsw i32 %179, %178
  store i32 %180, i32* %7, align 4
  br label %24

181:                                              ; preds = %24
  store i32 0, i32* %5, align 4
  br label %182

182:                                              ; preds = %181, %162
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @IS_ALIGNED(i32, i64) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @nvkm_vmm_ptes_sparse_get(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32) #1

declare dso_local i32 @nvkm_vmm_ptes_sparse_put(%struct.nvkm_vmm*, %struct.nvkm_vmm_page*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
