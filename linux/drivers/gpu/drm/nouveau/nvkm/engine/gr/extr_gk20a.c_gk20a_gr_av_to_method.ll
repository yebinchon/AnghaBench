; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk20a.c_gk20a_gr_av_to_method.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/nouveau/nvkm/engine/gr/extr_gk20a.c_gk20a_gr_av_to_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gf100_gr = type { i32 }
%struct.gf100_gr_pack = type { i64, %struct.gf100_gr_init* }
%struct.gf100_gr_init = type { i32, i32, i32, i64 }
%struct.gf100_gr_fuc = type { i32, i64 }
%struct.gk20a_fw_av = type { i32, i32 }

@gk20a_gr_av_to_method.max_classes = internal constant i32 16, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gk20a_gr_av_to_method(%struct.gf100_gr* %0, i8* %1, %struct.gf100_gr_pack** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gf100_gr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.gf100_gr_pack**, align 8
  %8 = alloca %struct.gf100_gr_fuc, align 8
  %9 = alloca %struct.gf100_gr_init*, align 8
  %10 = alloca %struct.gf100_gr_pack*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gf100_gr_init*, align 8
  %17 = alloca %struct.gk20a_fw_av*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.gf100_gr* %0, %struct.gf100_gr** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.gf100_gr_pack** %2, %struct.gf100_gr_pack*** %7, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %20 = load %struct.gf100_gr*, %struct.gf100_gr** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @gf100_gr_ctor_fw(%struct.gf100_gr* %20, i8* %21, %struct.gf100_gr_fuc* %8)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %4, align 4
  br label %122

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %8, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = udiv i64 %30, 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = mul i64 24, %35
  %37 = add i64 256, %36
  %38 = trunc i64 %37 to i32
  %39 = call %struct.gf100_gr_pack* @vzalloc(i32 %38)
  store %struct.gf100_gr_pack* %39, %struct.gf100_gr_pack** %10, align 8
  %40 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %41 = icmp ne %struct.gf100_gr_pack* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %27
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %14, align 4
  br label %119

45:                                               ; preds = %27
  %46 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %47 = getelementptr inbounds %struct.gf100_gr_pack, %struct.gf100_gr_pack* %46, i64 16
  %48 = bitcast %struct.gf100_gr_pack* %47 to i8*
  %49 = bitcast i8* %48 to %struct.gf100_gr_init*
  store %struct.gf100_gr_init* %49, %struct.gf100_gr_init** %9, align 8
  store i32 0, i32* %15, align 4
  br label %50

50:                                               ; preds = %113, %45
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %116

54:                                               ; preds = %50
  %55 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %9, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %55, i64 %57
  store %struct.gf100_gr_init* %58, %struct.gf100_gr_init** %16, align 8
  %59 = getelementptr inbounds %struct.gf100_gr_fuc, %struct.gf100_gr_fuc* %8, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = inttoptr i64 %60 to %struct.gk20a_fw_av*
  %62 = load i32, i32* %15, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.gk20a_fw_av, %struct.gk20a_fw_av* %61, i64 %63
  store %struct.gk20a_fw_av* %64, %struct.gk20a_fw_av** %17, align 8
  %65 = load %struct.gk20a_fw_av*, %struct.gk20a_fw_av** %17, align 8
  %66 = getelementptr inbounds %struct.gk20a_fw_av, %struct.gk20a_fw_av* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 65535
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %18, align 8
  %70 = load %struct.gk20a_fw_av*, %struct.gk20a_fw_av** %17, align 8
  %71 = getelementptr inbounds %struct.gk20a_fw_av, %struct.gk20a_fw_av* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, -65536
  %74 = lshr i32 %73, 14
  %75 = zext i32 %74 to i64
  store i64 %75, i64* %19, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load i64, i64* %18, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %54
  %80 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %16, align 8
  %81 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds %struct.gf100_gr_pack, %struct.gf100_gr_pack* %81, i64 %82
  %84 = getelementptr inbounds %struct.gf100_gr_pack, %struct.gf100_gr_pack* %83, i32 0, i32 1
  store %struct.gf100_gr_init* %80, %struct.gf100_gr_init** %84, align 8
  %85 = load i64, i64* %18, align 8
  %86 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds %struct.gf100_gr_pack, %struct.gf100_gr_pack* %86, i64 %87
  %89 = getelementptr inbounds %struct.gf100_gr_pack, %struct.gf100_gr_pack* %88, i32 0, i32 0
  store i64 %85, i64* %89, align 8
  %90 = load i64, i64* %18, align 8
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add nsw i64 %91, 1
  store i64 %92, i64* %11, align 8
  %93 = icmp sge i64 %92, 16
  br i1 %93, label %94, label %99

94:                                               ; preds = %79
  %95 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %96 = call i32 @vfree(%struct.gf100_gr_pack* %95)
  %97 = load i32, i32* @ENOSPC, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %14, align 4
  br label %119

99:                                               ; preds = %79
  br label %100

100:                                              ; preds = %99, %54
  %101 = load i64, i64* %19, align 8
  %102 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %16, align 8
  %103 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %102, i32 0, i32 3
  store i64 %101, i64* %103, align 8
  %104 = load %struct.gk20a_fw_av*, %struct.gk20a_fw_av** %17, align 8
  %105 = getelementptr inbounds %struct.gk20a_fw_av, %struct.gk20a_fw_av* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %16, align 8
  %108 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %16, align 8
  %110 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load %struct.gf100_gr_init*, %struct.gf100_gr_init** %16, align 8
  %112 = getelementptr inbounds %struct.gf100_gr_init, %struct.gf100_gr_init* %111, i32 0, i32 1
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %100
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %50

116:                                              ; preds = %50
  %117 = load %struct.gf100_gr_pack*, %struct.gf100_gr_pack** %10, align 8
  %118 = load %struct.gf100_gr_pack**, %struct.gf100_gr_pack*** %7, align 8
  store %struct.gf100_gr_pack* %117, %struct.gf100_gr_pack** %118, align 8
  br label %119

119:                                              ; preds = %116, %94, %42
  %120 = call i32 @gf100_gr_dtor_fw(%struct.gf100_gr_fuc* %8)
  %121 = load i32, i32* %14, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %119, %25
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @gf100_gr_ctor_fw(%struct.gf100_gr*, i8*, %struct.gf100_gr_fuc*) #1

declare dso_local %struct.gf100_gr_pack* @vzalloc(i32) #1

declare dso_local i32 @vfree(%struct.gf100_gr_pack*) #1

declare dso_local i32 @gf100_gr_dtor_fw(%struct.gf100_gr_fuc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
