; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_sg_map_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_talitos.c_talitos_sg_map_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }
%struct.talitos_edesc = type { i64, i32* }
%struct.talitos_ptr = type { i32 }
%struct.talitos_private = type { i32 }

@DESC_PTR_LNKTBL_JUMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.scatterlist*, i32, %struct.talitos_edesc*, %struct.talitos_ptr*, i32, i32, i32, i32, i32)* @talitos_sg_map_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @talitos_sg_map_ext(%struct.device* %0, %struct.scatterlist* %1, i32 %2, %struct.talitos_edesc* %3, %struct.talitos_ptr* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.device*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.talitos_edesc*, align 8
  %16 = alloca %struct.talitos_ptr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.talitos_private*, align 8
  %23 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %12, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %13, align 8
  store i32 %2, i32* %14, align 4
  store %struct.talitos_edesc* %3, %struct.talitos_edesc** %15, align 8
  store %struct.talitos_ptr* %4, %struct.talitos_ptr** %16, align 8
  store i32 %5, i32* %17, align 4
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32 %8, i32* %20, align 4
  store i32 %9, i32* %21, align 4
  %24 = load %struct.device*, %struct.device** %12, align 8
  %25 = call %struct.talitos_private* @dev_get_drvdata(%struct.device* %24)
  store %struct.talitos_private* %25, %struct.talitos_private** %22, align 8
  %26 = load %struct.talitos_private*, %struct.talitos_private** %22, align 8
  %27 = call i32 @has_ftr_sec1(%struct.talitos_private* %26)
  store i32 %27, i32* %23, align 4
  %28 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %29 = icmp ne %struct.scatterlist* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %10
  %31 = load %struct.talitos_ptr*, %struct.talitos_ptr** %16, align 8
  %32 = load i32, i32* %23, align 4
  %33 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %31, i64 0, i32 0, i32 %32)
  store i32 1, i32* %11, align 4
  br label %116

34:                                               ; preds = %10
  %35 = load %struct.talitos_ptr*, %struct.talitos_ptr** %16, align 8
  %36 = load i32, i32* %20, align 4
  %37 = load i32, i32* %23, align 4
  %38 = call i32 @to_talitos_ptr_ext_set(%struct.talitos_ptr* %35, i32 %36, i32 %37)
  %39 = load i32, i32* %17, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %55

41:                                               ; preds = %34
  %42 = load i32, i32* %21, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %41
  %45 = load %struct.talitos_ptr*, %struct.talitos_ptr** %16, align 8
  %46 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %47 = call i64 @sg_dma_address(%struct.scatterlist* %46)
  %48 = load i32, i32* %18, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %23, align 4
  %53 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %45, i64 %50, i32 %51, i32 %52)
  %54 = load i32, i32* %17, align 4
  store i32 %54, i32* %11, align 4
  br label %116

55:                                               ; preds = %41, %34
  %56 = load i32, i32* %23, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %55
  %59 = load %struct.talitos_ptr*, %struct.talitos_ptr** %16, align 8
  %60 = load %struct.talitos_edesc*, %struct.talitos_edesc** %15, align 8
  %61 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %18, align 4
  %64 = zext i32 %63 to i64
  %65 = add nsw i64 %62, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* %23, align 4
  %68 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %59, i64 %65, i32 %66, i32 %67)
  %69 = load i32, i32* %17, align 4
  store i32 %69, i32* %11, align 4
  br label %116

70:                                               ; preds = %55
  %71 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* %20, align 4
  %76 = load %struct.talitos_edesc*, %struct.talitos_edesc** %15, align 8
  %77 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %19, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = call i32 @sg_to_link_tbl_offset(%struct.scatterlist* %71, i32 %72, i32 %73, i32 %74, i32 %75, i32* %81)
  store i32 %82, i32* %17, align 4
  %83 = load i32, i32* %17, align 4
  %84 = icmp eq i32 %83, 1
  br i1 %84, label %85, label %99

85:                                               ; preds = %70
  %86 = load i32, i32* %21, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %99, label %88

88:                                               ; preds = %85
  %89 = load %struct.talitos_ptr*, %struct.talitos_ptr** %16, align 8
  %90 = load %struct.talitos_edesc*, %struct.talitos_edesc** %15, align 8
  %91 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %19, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %23, align 4
  %97 = call i32 @copy_talitos_ptr(%struct.talitos_ptr* %89, i32* %95, i32 %96)
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %11, align 4
  br label %116

99:                                               ; preds = %85, %70
  %100 = load %struct.talitos_ptr*, %struct.talitos_ptr** %16, align 8
  %101 = load %struct.talitos_edesc*, %struct.talitos_edesc** %15, align 8
  %102 = getelementptr inbounds %struct.talitos_edesc, %struct.talitos_edesc* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 %105, 4
  %107 = add i64 %103, %106
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %23, align 4
  %110 = call i32 @to_talitos_ptr(%struct.talitos_ptr* %100, i64 %107, i32 %108, i32 %109)
  %111 = load %struct.talitos_ptr*, %struct.talitos_ptr** %16, align 8
  %112 = load i32, i32* @DESC_PTR_LNKTBL_JUMP, align 4
  %113 = load i32, i32* %23, align 4
  %114 = call i32 @to_talitos_ptr_ext_or(%struct.talitos_ptr* %111, i32 %112, i32 %113)
  %115 = load i32, i32* %17, align 4
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %99, %88, %58, %44, %30
  %117 = load i32, i32* %11, align 4
  ret i32 %117
}

declare dso_local %struct.talitos_private* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @has_ftr_sec1(%struct.talitos_private*) #1

declare dso_local i32 @to_talitos_ptr(%struct.talitos_ptr*, i64, i32, i32) #1

declare dso_local i32 @to_talitos_ptr_ext_set(%struct.talitos_ptr*, i32, i32) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i32 @sg_to_link_tbl_offset(%struct.scatterlist*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @copy_talitos_ptr(%struct.talitos_ptr*, i32*, i32) #1

declare dso_local i32 @to_talitos_ptr_ext_or(%struct.talitos_ptr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
