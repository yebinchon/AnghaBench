; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_verifier.c_via_parse_header2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/via/extr_via_verifier.c_via_parse_header2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32**, i32 }

@HC_REG_TRANS_SET = common dso_local global i64 0, align 8
@HC_REG_BASE = common dso_local global i64 0, align 8
@HC_ACMD_MASK = common dso_local global i32 0, align 4
@HC_ACMD_HCmdB = common dso_local global i32 0, align 4
@HC_REG_TRANS_SPACE = common dso_local global i64 0, align 8
@HALCYON_FIREMASK = common dso_local global i32 0, align 4
@HALCYON_FIRECMD = common dso_local global i32 0, align 4
@HC_HEADER2 = common dso_local global i32 0, align 4
@HALCYON_HEADER1MASK = common dso_local global i32 0, align 4
@HALCYON_HEADER1 = common dso_local global i32 0, align 4
@VIA_VIDEOMASK = common dso_local global i32 0, align 4
@VIA_VIDEO_HEADER5 = common dso_local global i32 0, align 4
@VIA_VIDEO_HEADER6 = common dso_local global i32 0, align 4
@state_command = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32**, i32*, i32*)* @via_parse_header2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @via_parse_header2(%struct.TYPE_4__* %0, i32** %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32**, i32*** %6, align 8
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32*, i32** %17, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %11, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, -65536
  %28 = lshr i32 %27, 16
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = load i64, i64* @HC_REG_TRANS_SET, align 8
  %31 = load i64, i64* @HC_REG_BASE, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %10, align 8
  %35 = load i32, i32* %33, align 4
  %36 = call i32 @via_write(%struct.TYPE_4__* %29, i64 %32, i32 %35)
  %37 = load i32, i32* %9, align 4
  switch i32 %37, label %112 [
    i32 128, label %38
  ]

38:                                               ; preds = %4
  br label %39

39:                                               ; preds = %110, %38
  %40 = load i32*, i32** %10, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %39
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %43
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HC_ACMD_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @HC_ACMD_HCmdB, align 4
  %56 = icmp eq i32 %54, %55
  br label %57

57:                                               ; preds = %50, %43, %39
  %58 = phi i1 [ false, %43 ], [ false, %39 ], [ %56, %50 ]
  br i1 %58, label %59, label %111

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = icmp ule i32* %61, %62
  br i1 %63, label %64, label %79

64:                                               ; preds = %60
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = load i64, i64* @HC_REG_TRANS_SPACE, align 8
  %67 = load i64, i64* @HC_REG_BASE, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, 63
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds i32, i32* %73, i32 1
  store i32* %74, i32** %10, align 8
  %75 = load i32, i32* %73, align 4
  %76 = call i32 @via_write(%struct.TYPE_4__* %65, i64 %72, i32 %75)
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 4
  store i32 %78, i32* %12, align 4
  br label %60

79:                                               ; preds = %60
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %7, align 8
  %82 = icmp ult i32* %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32*, i32** %10, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @HALCYON_FIREMASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @HALCYON_FIRECMD, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %10, align 8
  br label %93

93:                                               ; preds = %90, %83, %79
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %96, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %93
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32*, i32** %8, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %104, i64 %107
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %11, align 8
  br label %110

110:                                              ; preds = %101, %93
  br label %39

111:                                              ; preds = %57
  br label %160

112:                                              ; preds = %4
  br label %113

113:                                              ; preds = %144, %112
  %114 = load i32*, i32** %10, align 8
  %115 = load i32*, i32** %7, align 8
  %116 = icmp ult i32* %114, %115
  br i1 %116, label %117, label %159

117:                                              ; preds = %113
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @HC_HEADER2, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %143, label %122

122:                                              ; preds = %117
  %123 = load i32*, i32** %10, align 8
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @HALCYON_HEADER1MASK, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* @HALCYON_HEADER1, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %143, label %129

129:                                              ; preds = %122
  %130 = load i32*, i32** %10, align 8
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @VIA_VIDEOMASK, align 4
  %133 = and i32 %131, %132
  %134 = load i32, i32* @VIA_VIDEO_HEADER5, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %143, label %136

136:                                              ; preds = %129
  %137 = load i32*, i32** %10, align 8
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @VIA_VIDEOMASK, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @VIA_VIDEO_HEADER6, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %136, %129, %122, %117
  br label %159

144:                                              ; preds = %136
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %146 = load i64, i64* @HC_REG_TRANS_SPACE, align 8
  %147 = load i64, i64* @HC_REG_BASE, align 8
  %148 = add nsw i64 %146, %147
  %149 = load i32, i32* %12, align 4
  %150 = and i32 %149, 63
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %148, %151
  %153 = load i32*, i32** %10, align 8
  %154 = getelementptr inbounds i32, i32* %153, i32 1
  store i32* %154, i32** %10, align 8
  %155 = load i32, i32* %153, align 4
  %156 = call i32 @via_write(%struct.TYPE_4__* %145, i64 %152, i32 %155)
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 4
  store i32 %158, i32* %12, align 4
  br label %113

159:                                              ; preds = %143, %113
  br label %160

160:                                              ; preds = %159, %111
  %161 = load i32*, i32** %10, align 8
  %162 = load i32**, i32*** %6, align 8
  store i32* %161, i32** %162, align 8
  %163 = load i32, i32* @state_command, align 4
  ret i32 %163
}

declare dso_local i32 @via_write(%struct.TYPE_4__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
