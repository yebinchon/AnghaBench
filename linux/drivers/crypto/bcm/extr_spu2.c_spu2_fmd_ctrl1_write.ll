; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_fmd_ctrl1_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/bcm/extr_spu2.c_spu2_fmd_ctrl1_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SPU2_FMD = type { i32 }

@SPU2_TAG_LOC = common dso_local global i32 0, align 4
@SPU2_HAS_AAD2 = common dso_local global i32 0, align 4
@SPU2_RETURN_AAD2 = common dso_local global i32 0, align 4
@SPU2_HASH_KEY_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_HASH_KEY_LEN = common dso_local global i32 0, align 4
@SPU2_CIPH_KEY_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_CIPH_KEY_LEN = common dso_local global i32 0, align 4
@SPU2_GENIV = common dso_local global i32 0, align 4
@SPU2_HASH_IV = common dso_local global i32 0, align 4
@SPU2_RET_IV = common dso_local global i32 0, align 4
@SPU2_RET_IV_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_IV_OFFSET_SHIFT = common dso_local global i32 0, align 4
@SPU2_IV_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_IV_LEN = common dso_local global i32 0, align 4
@SPU2_HASH_TAG_LEN_SHIFT = common dso_local global i32 0, align 4
@SPU2_HASH_TAG_LEN = common dso_local global i32 0, align 4
@SPU2_RET_FMD_ONLY = common dso_local global i64 0, align 8
@SPU2_RETURN_MD_SHIFT = common dso_local global i32 0, align 4
@SPU2_RET_NO_MD = common dso_local global i64 0, align 8
@SPU2_RETURN_PAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SPU2_FMD*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @spu2_fmd_ctrl1_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu2_fmd_ctrl1_write(%struct.SPU2_FMD* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca %struct.SPU2_FMD*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.SPU2_FMD* %0, %struct.SPU2_FMD** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  store i32 0, i32* %29, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %14
  %33 = load i32, i32* %26, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i32, i32* @SPU2_TAG_LOC, align 4
  %37 = load i32, i32* %29, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %29, align 4
  br label %39

39:                                               ; preds = %35, %32, %14
  %40 = load i32, i32* %17, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = load i32, i32* @SPU2_HAS_AAD2, align 4
  %44 = load i32, i32* %29, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %29, align 4
  %46 = load i32, i32* @SPU2_RETURN_AAD2, align 4
  %47 = load i32, i32* %29, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %29, align 4
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i32, i32* %18, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* @SPU2_HASH_KEY_LEN_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* @SPU2_HASH_KEY_LEN, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %29, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %29, align 4
  br label %60

60:                                               ; preds = %52, %49
  %61 = load i32, i32* %19, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %60
  %64 = load i32, i32* %19, align 4
  %65 = load i32, i32* @SPU2_CIPH_KEY_LEN_SHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* @SPU2_CIPH_KEY_LEN, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* %29, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %29, align 4
  br label %71

71:                                               ; preds = %63, %60
  %72 = load i32, i32* %20, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load i32, i32* @SPU2_GENIV, align 4
  %76 = load i32, i32* %29, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %29, align 4
  br label %78

78:                                               ; preds = %74, %71
  %79 = load i32, i32* %21, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @SPU2_HASH_IV, align 4
  %83 = load i32, i32* %29, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %29, align 4
  br label %85

85:                                               ; preds = %81, %78
  %86 = load i32, i32* %22, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %85
  %89 = load i32, i32* @SPU2_RET_IV, align 4
  %90 = load i32, i32* %29, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %29, align 4
  %92 = load i32, i32* %23, align 4
  %93 = load i32, i32* @SPU2_RET_IV_LEN_SHIFT, align 4
  %94 = shl i32 %92, %93
  %95 = load i32, i32* %29, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %29, align 4
  %97 = load i32, i32* %24, align 4
  %98 = load i32, i32* @SPU2_IV_OFFSET_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = load i32, i32* %29, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %29, align 4
  br label %102

102:                                              ; preds = %88, %85
  %103 = load i32, i32* %25, align 4
  %104 = load i32, i32* @SPU2_IV_LEN_SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = load i32, i32* @SPU2_IV_LEN, align 4
  %107 = and i32 %105, %106
  %108 = load i32, i32* %29, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %29, align 4
  %110 = load i32, i32* %26, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %120

112:                                              ; preds = %102
  %113 = load i32, i32* %26, align 4
  %114 = load i32, i32* @SPU2_HASH_TAG_LEN_SHIFT, align 4
  %115 = shl i32 %113, %114
  %116 = load i32, i32* @SPU2_HASH_TAG_LEN, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* %29, align 4
  %119 = or i32 %118, %117
  store i32 %119, i32* %29, align 4
  br label %120

120:                                              ; preds = %112, %102
  %121 = load i32, i32* %28, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = load i64, i64* @SPU2_RET_FMD_ONLY, align 8
  %125 = trunc i64 %124 to i32
  %126 = load i32, i32* @SPU2_RETURN_MD_SHIFT, align 4
  %127 = shl i32 %125, %126
  %128 = load i32, i32* %29, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %29, align 4
  br label %137

130:                                              ; preds = %120
  %131 = load i64, i64* @SPU2_RET_NO_MD, align 8
  %132 = trunc i64 %131 to i32
  %133 = load i32, i32* @SPU2_RETURN_MD_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = load i32, i32* %29, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %29, align 4
  br label %137

137:                                              ; preds = %130, %123
  %138 = load i32, i32* %27, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load i32, i32* @SPU2_RETURN_PAY, align 4
  %142 = load i32, i32* %29, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %29, align 4
  br label %144

144:                                              ; preds = %140, %137
  %145 = load i32, i32* %29, align 4
  %146 = call i32 @cpu_to_le64(i32 %145)
  %147 = load %struct.SPU2_FMD*, %struct.SPU2_FMD** %15, align 8
  %148 = getelementptr inbounds %struct.SPU2_FMD, %struct.SPU2_FMD* %147, i32 0, i32 0
  store i32 %146, i32* %148, align 4
  ret void
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
