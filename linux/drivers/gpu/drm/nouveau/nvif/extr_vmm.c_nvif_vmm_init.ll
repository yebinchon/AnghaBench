; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_vmm.c_nvif_vmm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvif/extr_vmm.c_nvif_vmm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvif_mmu = type { i32 }
%struct.nvif_vmm = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__, i8*, i8* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.nvif_vmm_v0 = type { i32, i32, i8*, i8*, i32, i64 }
%struct.nvif_vmm_page_v0 = type { i32, i32, i32, i32, i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NVIF_VMM_V0_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvif_vmm_init(%struct.nvif_mmu* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5, i64 %6, %struct.nvif_vmm* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.nvif_mmu*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.nvif_vmm*, align 8
  %18 = alloca %struct.nvif_vmm_v0*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.nvif_vmm_page_v0, align 4
  store %struct.nvif_mmu* %0, %struct.nvif_mmu** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store %struct.nvif_vmm* %7, %struct.nvif_vmm** %17, align 8
  %23 = load i64, i64* %16, align 8
  %24 = add i64 40, %23
  store i64 %24, i64* %19, align 8
  %25 = load i32, i32* @ENOSYS, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %20, align 4
  %27 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %28 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %31 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %30, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %31, align 8
  %32 = load i64, i64* %19, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call %struct.nvif_vmm_v0* @kmalloc(i64 %32, i32 %33)
  store %struct.nvif_vmm_v0* %34, %struct.nvif_vmm_v0** %18, align 8
  %35 = icmp ne %struct.nvif_vmm_v0* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %8
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %176

39:                                               ; preds = %8
  %40 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %41 = getelementptr inbounds %struct.nvif_vmm_v0, %struct.nvif_vmm_v0* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %44 = getelementptr inbounds %struct.nvif_vmm_v0, %struct.nvif_vmm_v0* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %47 = getelementptr inbounds %struct.nvif_vmm_v0, %struct.nvif_vmm_v0* %46, i32 0, i32 3
  store i8* %45, i8** %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %50 = getelementptr inbounds %struct.nvif_vmm_v0, %struct.nvif_vmm_v0* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %52 = getelementptr inbounds %struct.nvif_vmm_v0, %struct.nvif_vmm_v0* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @memcpy(i32 %53, i8* %54, i64 %55)
  %57 = load %struct.nvif_mmu*, %struct.nvif_mmu** %10, align 8
  %58 = getelementptr inbounds %struct.nvif_mmu, %struct.nvif_mmu* %57, i32 0, i32 0
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %61 = load i64, i64* %19, align 8
  %62 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %63 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %62, i32 0, i32 2
  %64 = call i32 @nvif_object_init(i32* %58, i32 0, i32 %59, %struct.nvif_vmm_v0* %60, i64 %61, %struct.TYPE_4__* %63)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %39
  br label %166

68:                                               ; preds = %39
  %69 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %70 = getelementptr inbounds %struct.nvif_vmm_v0, %struct.nvif_vmm_v0* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %73 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %72, i32 0, i32 4
  store i8* %71, i8** %73, align 8
  %74 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %75 = getelementptr inbounds %struct.nvif_vmm_v0, %struct.nvif_vmm_v0* %74, i32 0, i32 2
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %78 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %77, i32 0, i32 3
  store i8* %76, i8** %78, align 8
  %79 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %80 = getelementptr inbounds %struct.nvif_vmm_v0, %struct.nvif_vmm_v0* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %83 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  %84 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %85 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call %struct.TYPE_5__* @kmalloc_array(i32 %86, i32 20, i32 %87)
  %89 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %90 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %89, i32 0, i32 1
  store %struct.TYPE_5__* %88, %struct.TYPE_5__** %90, align 8
  %91 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %92 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %91, i32 0, i32 1
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = icmp ne %struct.TYPE_5__* %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %68
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %20, align 4
  br label %166

98:                                               ; preds = %68
  store i32 0, i32* %21, align 4
  br label %99

99:                                               ; preds = %162, %98
  %100 = load i32, i32* %21, align 4
  %101 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %102 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %165

105:                                              ; preds = %99
  %106 = bitcast %struct.nvif_vmm_page_v0* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %106, i8 0, i64 24, i1 false)
  %107 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %22, i32 0, i32 0
  %108 = load i32, i32* %21, align 4
  store i32 %108, i32* %107, align 4
  %109 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %110 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %109, i32 0, i32 2
  %111 = load i32, i32* @NVIF_VMM_V0_PAGE, align 4
  %112 = call i32 @nvif_object_mthd(%struct.TYPE_4__* %110, i32 %111, %struct.nvif_vmm_page_v0* %22, i32 24)
  store i32 %112, i32* %20, align 4
  %113 = load i32, i32* %20, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %105
  br label %165

116:                                              ; preds = %105
  %117 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %22, i32 0, i32 5
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %120 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %119, i32 0, i32 1
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %120, align 8
  %122 = load i32, i32* %21, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 4
  store i32 %118, i32* %125, align 4
  %126 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %22, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %129 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %128, i32 0, i32 1
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %129, align 8
  %131 = load i32, i32* %21, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  store i32 %127, i32* %134, align 4
  %135 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %22, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %138 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %137, i32 0, i32 1
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = load i32, i32* %21, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 %141
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  store i32 %136, i32* %143, align 4
  %144 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %22, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %147 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %146, i32 0, i32 1
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %147, align 8
  %149 = load i32, i32* %21, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i32 %145, i32* %152, align 4
  %153 = getelementptr inbounds %struct.nvif_vmm_page_v0, %struct.nvif_vmm_page_v0* %22, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %156 = getelementptr inbounds %struct.nvif_vmm, %struct.nvif_vmm* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = load i32, i32* %21, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  store i32 %154, i32* %161, align 4
  br label %162

162:                                              ; preds = %116
  %163 = load i32, i32* %21, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %21, align 4
  br label %99

165:                                              ; preds = %115, %99
  br label %166

166:                                              ; preds = %165, %95, %67
  %167 = load i32, i32* %20, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load %struct.nvif_vmm*, %struct.nvif_vmm** %17, align 8
  %171 = call i32 @nvif_vmm_fini(%struct.nvif_vmm* %170)
  br label %172

172:                                              ; preds = %169, %166
  %173 = load %struct.nvif_vmm_v0*, %struct.nvif_vmm_v0** %18, align 8
  %174 = call i32 @kfree(%struct.nvif_vmm_v0* %173)
  %175 = load i32, i32* %20, align 4
  store i32 %175, i32* %9, align 4
  br label %176

176:                                              ; preds = %172, %36
  %177 = load i32, i32* %9, align 4
  ret i32 %177
}

declare dso_local %struct.nvif_vmm_v0* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @nvif_object_init(i32*, i32, i32, %struct.nvif_vmm_v0*, i64, %struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_5__* @kmalloc_array(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @nvif_object_mthd(%struct.TYPE_4__*, i32, %struct.nvif_vmm_page_v0*, i32) #1

declare dso_local i32 @nvif_vmm_fini(%struct.nvif_vmm*) #1

declare dso_local i32 @kfree(%struct.nvif_vmm_v0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
