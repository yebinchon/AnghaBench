; ModuleID = '/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_dnv_get_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/edac/extr_pnd2_edac.c_dnv_get_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dsch = common dso_local global i32 0, align 4
@d_cr_dsch = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DNV_NUM_CHANNELS = common dso_local global i32 0, align 4
@ecc_ctrl = common dso_local global i32* null, align 8
@d_cr_ecc_ctrl = common dso_local global i32 0, align 4
@dnv_dports = common dso_local global i32* null, align 8
@drp = common dso_local global i32* null, align 8
@d_cr_drp = common dso_local global i32 0, align 4
@dmap = common dso_local global i32* null, align 8
@d_cr_dmap = common dso_local global i32 0, align 4
@dmap1 = common dso_local global i32* null, align 8
@d_cr_dmap1 = common dso_local global i32 0, align 4
@dmap2 = common dso_local global i32* null, align 8
@d_cr_dmap2 = common dso_local global i32 0, align 4
@dmap3 = common dso_local global i32* null, align 8
@d_cr_dmap3 = common dso_local global i32 0, align 4
@dmap4 = common dso_local global i32* null, align 8
@d_cr_dmap4 = common dso_local global i32 0, align 4
@dmap5 = common dso_local global i32* null, align 8
@d_cr_dmap5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @dnv_get_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnv_get_registers() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @d_cr_dsch, align 4
  %4 = call i64 @RD_REG(i32* @dsch, i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* @ENODEV, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %126

9:                                                ; preds = %0
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %122, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @DNV_NUM_CHANNELS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %125

14:                                               ; preds = %10
  %15 = load i32*, i32** @ecc_ctrl, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* @d_cr_ecc_ctrl, align 4
  %20 = load i32*, i32** @dnv_dports, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @RD_REGP(i32* %18, i32 %19, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %118, label %27

27:                                               ; preds = %14
  %28 = load i32*, i32** @drp, align 8
  %29 = load i32, i32* %2, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* @d_cr_drp, align 4
  %33 = load i32*, i32** @dnv_dports, align 8
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @RD_REGP(i32* %31, i32 %32, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %118, label %40

40:                                               ; preds = %27
  %41 = load i32*, i32** @dmap, align 8
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* @d_cr_dmap, align 4
  %46 = load i32*, i32** @dnv_dports, align 8
  %47 = load i32, i32* %2, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @RD_REGP(i32* %44, i32 %45, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %118, label %53

53:                                               ; preds = %40
  %54 = load i32*, i32** @dmap1, align 8
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* @d_cr_dmap1, align 4
  %59 = load i32*, i32** @dnv_dports, align 8
  %60 = load i32, i32* %2, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @RD_REGP(i32* %57, i32 %58, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %118, label %66

66:                                               ; preds = %53
  %67 = load i32*, i32** @dmap2, align 8
  %68 = load i32, i32* %2, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* @d_cr_dmap2, align 4
  %72 = load i32*, i32** @dnv_dports, align 8
  %73 = load i32, i32* %2, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @RD_REGP(i32* %70, i32 %71, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %118, label %79

79:                                               ; preds = %66
  %80 = load i32*, i32** @dmap3, align 8
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* @d_cr_dmap3, align 4
  %85 = load i32*, i32** @dnv_dports, align 8
  %86 = load i32, i32* %2, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @RD_REGP(i32* %83, i32 %84, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %118, label %92

92:                                               ; preds = %79
  %93 = load i32*, i32** @dmap4, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* @d_cr_dmap4, align 4
  %98 = load i32*, i32** @dnv_dports, align 8
  %99 = load i32, i32* %2, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @RD_REGP(i32* %96, i32 %97, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %92
  %106 = load i32*, i32** @dmap5, align 8
  %107 = load i32, i32* %2, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* @d_cr_dmap5, align 4
  %111 = load i32*, i32** @dnv_dports, align 8
  %112 = load i32, i32* %2, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @RD_REGP(i32* %109, i32 %110, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %105, %92, %79, %66, %53, %40, %27, %14
  %119 = load i32, i32* @ENODEV, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %1, align 4
  br label %126

121:                                              ; preds = %105
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %2, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %2, align 4
  br label %10

125:                                              ; preds = %10
  store i32 0, i32* %1, align 4
  br label %126

126:                                              ; preds = %125, %118, %6
  %127 = load i32, i32* %1, align 4
  ret i32 %127
}

declare dso_local i64 @RD_REG(i32*, i32) #1

declare dso_local i64 @RD_REGP(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
