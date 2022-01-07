; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_xmit_cpu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_omap-sham.c_omap_sham_xmit_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_sham_dev = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.omap_sham_dev*)*, i32 (%struct.omap_sham_dev*, i64)*, i32 (%struct.omap_sham_dev*, i64, i32, i32)* }
%struct.omap_sham_reqctx = type { i64, i64, i32, i32 }
%struct.sg_mapping_iter = type { i32, i32* }

@.str = private unnamed_addr constant [45 x i8] c"xmit_cpu: digcnt: %d, length: %d, final: %d\0A\00", align 1
@FLAGS_FINAL = common dso_local global i32 0, align 4
@FLAGS_CPU = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"sg miter failure.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_sham_dev*, i64, i32)* @omap_sham_xmit_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_sham_xmit_cpu(%struct.omap_sham_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_sham_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.omap_sham_reqctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sg_mapping_iter, align 8
  store %struct.omap_sham_dev* %0, %struct.omap_sham_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %17 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.omap_sham_reqctx* @ahash_request_ctx(i32 %18)
  store %struct.omap_sham_reqctx* %19, %struct.omap_sham_reqctx** %8, align 8
  store i32 0, i32* %12, align 4
  %20 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %21 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %24 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26, i32 %27)
  %29 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %30 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  %33 = load i32 (%struct.omap_sham_dev*, i64, i32, i32)*, i32 (%struct.omap_sham_dev*, i64, i32, i32)** %32, align 8
  %34 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %33(%struct.omap_sham_dev* %34, i64 %35, i32 %36, i32 0)
  %38 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %39 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32 (%struct.omap_sham_dev*, i64)*, i32 (%struct.omap_sham_dev*, i64)** %41, align 8
  %43 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = call i32 %42(%struct.omap_sham_dev* %43, i64 %44)
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %48 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %46
  store i64 %50, i64* %48, align 8
  %51 = load i64, i64* %6, align 8
  %52 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %53 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = sub i64 %54, %51
  store i64 %55, i64* %53, align 8
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %3
  %59 = load i32, i32* @FLAGS_FINAL, align 4
  %60 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %61 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %60, i32 0, i32 1
  %62 = call i32 @set_bit(i32 %59, i32* %61)
  br label %63

63:                                               ; preds = %58, %3
  %64 = load i32, i32* @FLAGS_CPU, align 4
  %65 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %66 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %65, i32 0, i32 1
  %67 = call i32 @set_bit(i32 %64, i32* %66)
  %68 = load i64, i64* %6, align 8
  %69 = call i32 @DIV_ROUND_UP(i64 %68, i32 4)
  store i32 %69, i32* %10, align 4
  %70 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %71 = call i32 @get_block_size(%struct.omap_sham_reqctx* %70)
  %72 = sext i32 %71 to i64
  %73 = udiv i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %11, align 4
  %75 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %76 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.omap_sham_reqctx*, %struct.omap_sham_reqctx** %8, align 8
  %79 = getelementptr inbounds %struct.omap_sham_reqctx, %struct.omap_sham_reqctx* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %82 = load i32, i32* @SG_MITER_ATOMIC, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @sg_miter_start(%struct.sg_mapping_iter* %15, i32 %77, i32 %80, i32 %83)
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %141, %63
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %147

88:                                               ; preds = %85
  %89 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %90 = getelementptr inbounds %struct.omap_sham_dev, %struct.omap_sham_dev* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i64 (%struct.omap_sham_dev*)*, i64 (%struct.omap_sham_dev*)** %92, align 8
  %94 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %95 = call i64 %93(%struct.omap_sham_dev* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %88
  %98 = load i32, i32* @ETIMEDOUT, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %151

100:                                              ; preds = %88
  store i32 0, i32* %9, align 4
  br label %101

101:                                              ; preds = %136, %100
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = call i32 @min(i32 %103, i32 %104)
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %141

107:                                              ; preds = %101
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %107
  %111 = call i32 @sg_miter_next(%struct.sg_mapping_iter* %15)
  %112 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %15, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %110
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %151

120:                                              ; preds = %110
  store i32 0, i32* %12, align 4
  %121 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %15, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  store i32* %122, i32** %13, align 8
  br label %123

123:                                              ; preds = %120, %107
  %124 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %125 = load %struct.omap_sham_dev*, %struct.omap_sham_dev** %5, align 8
  %126 = load i32, i32* %9, align 4
  %127 = call i32 @SHA_REG_DIN(%struct.omap_sham_dev* %125, i32 %126)
  %128 = load i32*, i32** %13, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @omap_sham_write(%struct.omap_sham_dev* %124, i32 %127, i32 %132)
  %134 = load i32, i32* %14, align 4
  %135 = sub nsw i32 %134, 4
  store i32 %135, i32* %14, align 4
  br label %136

136:                                              ; preds = %123
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %12, align 4
  br label %101

141:                                              ; preds = %101
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @min(i32 %142, i32 %143)
  %145 = load i32, i32* %10, align 4
  %146 = sub nsw i32 %145, %144
  store i32 %146, i32* %10, align 4
  br label %85

147:                                              ; preds = %85
  %148 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %15)
  %149 = load i32, i32* @EINPROGRESS, align 4
  %150 = sub nsw i32 0, %149
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %147, %116, %97
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.omap_sham_reqctx* @ahash_request_ctx(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @get_block_size(%struct.omap_sham_reqctx*) #1

declare dso_local i32 @sg_miter_start(%struct.sg_mapping_iter*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @omap_sham_write(%struct.omap_sham_dev*, i32, i32) #1

declare dso_local i32 @SHA_REG_DIN(%struct.omap_sham_dev*, i32) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
