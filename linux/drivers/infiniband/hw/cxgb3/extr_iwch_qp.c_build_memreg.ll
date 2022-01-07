; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_memreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/cxgb3/extr_iwch_qp.c_build_memreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.t3_wr = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i8*, i8*, i8*, i8*, i8* }
%struct.ib_reg_wr = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.t3_wq = type { i32, i64, i64 }
%struct.iwch_mr = type { i32, i64*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32* }

@T3_MAX_FASTREG_DEPTH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TPT_VATO = common dso_local global i32 0, align 4
@T3_MAX_FASTREG_FRAG = common dso_local global i32 0, align 4
@T3_WR_FASTREG = common dso_local global i32 0, align 4
@T3_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.t3_wr*, %struct.ib_reg_wr*, i32*, i32*, %struct.t3_wq*)* @build_memreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_memreg(%union.t3_wr* %0, %struct.ib_reg_wr* %1, i32* %2, i32* %3, %struct.t3_wq* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %union.t3_wr*, align 8
  %8 = alloca %struct.ib_reg_wr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.t3_wq*, align 8
  %12 = alloca %struct.iwch_mr*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %union.t3_wr* %0, %union.t3_wr** %7, align 8
  store %struct.ib_reg_wr* %1, %struct.ib_reg_wr** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.t3_wq* %4, %struct.t3_wq** %11, align 8
  %15 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %8, align 8
  %16 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call %struct.iwch_mr* @to_iwch_mr(%struct.TYPE_8__* %17)
  store %struct.iwch_mr* %18, %struct.iwch_mr** %12, align 8
  %19 = load %struct.iwch_mr*, %struct.iwch_mr** %12, align 8
  %20 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @T3_MAX_FASTREG_DEPTH, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %169

27:                                               ; preds = %5
  %28 = load i32*, i32** %10, align 8
  store i32 1, i32* %28, align 4
  %29 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %8, align 8
  %30 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %34 = bitcast %union.t3_wr* %33 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 5
  store i8* %32, i8** %35, align 8
  %36 = load %struct.iwch_mr*, %struct.iwch_mr** %12, align 8
  %37 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %42 = bitcast %union.t3_wr* %41 to %struct.TYPE_6__*
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 4
  store i8* %40, i8** %43, align 8
  %44 = load %struct.iwch_mr*, %struct.iwch_mr** %12, align 8
  %45 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 32
  %49 = call i8* @cpu_to_be32(i32 %48)
  %50 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %51 = bitcast %union.t3_wr* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  store i8* %49, i8** %52, align 8
  %53 = load %struct.iwch_mr*, %struct.iwch_mr** %12, align 8
  %54 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @cpu_to_be32(i32 %56)
  %58 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %59 = bitcast %union.t3_wr* %58 to %struct.TYPE_6__*
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  store i8* %57, i8** %60, align 8
  %61 = load %struct.iwch_mr*, %struct.iwch_mr** %12, align 8
  %62 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @V_FR_PAGE_COUNT(i32 %63)
  %65 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %8, align 8
  %66 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %65, i32 0, i32 2
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @ilog2(i32 %69)
  %71 = sub nsw i64 %70, 12
  %72 = call i32 @V_FR_PAGE_SIZE(i64 %71)
  %73 = or i32 %64, %72
  %74 = load i32, i32* @TPT_VATO, align 4
  %75 = call i32 @V_FR_TYPE(i32 %74)
  %76 = or i32 %73, %75
  %77 = load %struct.ib_reg_wr*, %struct.ib_reg_wr** %8, align 8
  %78 = getelementptr inbounds %struct.ib_reg_wr, %struct.ib_reg_wr* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @iwch_ib_to_tpt_access(i32 %79)
  %81 = call i32 @V_FR_PERMS(i32 %80)
  %82 = or i32 %76, %81
  %83 = call i8* @cpu_to_be32(i32 %82)
  %84 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %85 = bitcast %union.t3_wr* %84 to %struct.TYPE_6__*
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  store i8* %83, i8** %86, align 8
  %87 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %88 = bitcast %union.t3_wr* %87 to %struct.TYPE_6__*
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32* %91, i32** %14, align 8
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %152, %27
  %93 = load i32, i32* %13, align 4
  %94 = load %struct.iwch_mr*, %struct.iwch_mr** %12, align 8
  %95 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %93, %96
  br i1 %97, label %98, label %157

98:                                               ; preds = %92
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* @T3_MAX_FASTREG_FRAG, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %141

102:                                              ; preds = %98
  %103 = load i32*, i32** %10, align 8
  store i32 2, i32* %103, align 4
  %104 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %105 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %108 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %112 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @Q_PTR2IDX(i64 %110, i32 %113)
  %115 = add nsw i64 %106, %114
  %116 = inttoptr i64 %115 to %union.t3_wr*
  store %union.t3_wr* %116, %union.t3_wr** %7, align 8
  %117 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %118 = bitcast %union.t3_wr* %117 to i8*
  %119 = load i32, i32* @T3_WR_FASTREG, align 4
  %120 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %121 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = add nsw i64 %122, 1
  %124 = load %struct.t3_wq*, %struct.t3_wq** %11, align 8
  %125 = getelementptr inbounds %struct.t3_wq, %struct.t3_wq* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @Q_GENBIT(i64 %123, i32 %126)
  %128 = load %struct.iwch_mr*, %struct.iwch_mr** %12, align 8
  %129 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = add nsw i32 1, %130
  %132 = load i32, i32* @T3_MAX_FASTREG_FRAG, align 4
  %133 = sub nsw i32 %131, %132
  %134 = load i32, i32* @T3_EOP, align 4
  %135 = call i32 @build_fw_riwrh(i8* %118, i32 %119, i32 0, i32 %127, i32 0, i32 %133, i32 %134)
  %136 = load %union.t3_wr*, %union.t3_wr** %7, align 8
  %137 = bitcast %union.t3_wr* %136 to %struct.TYPE_7__*
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32* %140, i32** %14, align 8
  br label %141

141:                                              ; preds = %102, %98
  %142 = load %struct.iwch_mr*, %struct.iwch_mr** %12, align 8
  %143 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = trunc i64 %148 to i32
  %150 = call i32 @cpu_to_be64(i32 %149)
  %151 = load i32*, i32** %14, align 8
  store i32 %150, i32* %151, align 4
  br label %152

152:                                              ; preds = %141
  %153 = load i32, i32* %13, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %13, align 4
  %155 = load i32*, i32** %14, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %14, align 8
  br label %92

157:                                              ; preds = %92
  %158 = load %struct.iwch_mr*, %struct.iwch_mr** %12, align 8
  %159 = getelementptr inbounds %struct.iwch_mr, %struct.iwch_mr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = add nsw i32 5, %160
  %162 = load i32*, i32** %9, align 8
  store i32 %161, i32* %162, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = load i32, i32* %163, align 4
  %165 = icmp sgt i32 %164, 15
  br i1 %165, label %166, label %168

166:                                              ; preds = %157
  %167 = load i32*, i32** %9, align 8
  store i32 15, i32* %167, align 4
  br label %168

168:                                              ; preds = %166, %157
  store i32 0, i32* %6, align 4
  br label %169

169:                                              ; preds = %168, %24
  %170 = load i32, i32* %6, align 4
  ret i32 %170
}

declare dso_local %struct.iwch_mr* @to_iwch_mr(%struct.TYPE_8__*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @V_FR_PAGE_COUNT(i32) #1

declare dso_local i32 @V_FR_PAGE_SIZE(i64) #1

declare dso_local i64 @ilog2(i32) #1

declare dso_local i32 @V_FR_TYPE(i32) #1

declare dso_local i32 @V_FR_PERMS(i32) #1

declare dso_local i32 @iwch_ib_to_tpt_access(i32) #1

declare dso_local i64 @Q_PTR2IDX(i64, i32) #1

declare dso_local i32 @build_fw_riwrh(i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @Q_GENBIT(i64, i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
