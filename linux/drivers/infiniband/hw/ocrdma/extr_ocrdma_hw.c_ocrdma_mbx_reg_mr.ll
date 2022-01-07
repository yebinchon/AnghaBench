; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_reg_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_mbx_reg_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32 }
%struct.ocrdma_hw_mr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ocrdma_reg_nsmr = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i8*, i32 }
%struct.TYPE_3__ = type { i32, i8* }
%struct.ocrdma_reg_nsmr_rsp = type { i32 }
%struct.ocrdma_mqe = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@OCRDMA_CMD_REGISTER_NSMR = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_NUM_PBL_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_REMOTE_WR_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_REMOTE_RD_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_LOCAL_WR_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_REMOTE_ATOMIC_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_BIND_MEMWIN_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_LAST_SHIFT = common dso_local global i32 0, align 4
@OCRDMA_MIN_HPAGE_SIZE = common dso_local global i32 0, align 4
@OCRDMA_REG_NSMR_HPAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*, %struct.ocrdma_hw_mr*, i32, i32, i32, i32)* @ocrdma_mbx_reg_mr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_mbx_reg_mr(%struct.ocrdma_dev* %0, %struct.ocrdma_hw_mr* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ocrdma_dev*, align 8
  %9 = alloca %struct.ocrdma_hw_mr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ocrdma_reg_nsmr*, align 8
  %17 = alloca %struct.ocrdma_reg_nsmr_rsp*, align 8
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %8, align 8
  store %struct.ocrdma_hw_mr* %1, %struct.ocrdma_hw_mr** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* @OCRDMA_CMD_REGISTER_NSMR, align 4
  %21 = call %struct.ocrdma_reg_nsmr* @ocrdma_init_emb_mqe(i32 %20, i32 56)
  store %struct.ocrdma_reg_nsmr* %21, %struct.ocrdma_reg_nsmr** %16, align 8
  %22 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %23 = icmp ne %struct.ocrdma_reg_nsmr* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %208

27:                                               ; preds = %6
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %30 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @OCRDMA_REG_NSMR_NUM_PBL_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %28, %33
  %35 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %36 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %38 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %37, i32 0, i32 13
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %41 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %40, i32 0, i32 9
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %43 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @OCRDMA_REG_NSMR_REMOTE_WR_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %48 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %52 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @OCRDMA_REG_NSMR_REMOTE_RD_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %57 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %61 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @OCRDMA_REG_NSMR_LOCAL_WR_SHIFT, align 4
  %64 = shl i32 %62, %63
  %65 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %66 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  %69 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %70 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @OCRDMA_REG_NSMR_REMOTE_ATOMIC_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %75 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %79 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @OCRDMA_REG_NSMR_BIND_MEMWIN_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %84 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @OCRDMA_REG_NSMR_LAST_SHIFT, align 4
  %89 = shl i32 %87, %88
  %90 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %91 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  %94 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %95 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @OCRDMA_MIN_HPAGE_SIZE, align 4
  %98 = sdiv i32 %96, %97
  %99 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %100 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  %103 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %104 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @OCRDMA_MIN_HPAGE_SIZE, align 4
  %107 = sdiv i32 %105, %106
  %108 = load i32, i32* @OCRDMA_REG_NSMR_HPAGE_SIZE_SHIFT, align 4
  %109 = shl i32 %107, %108
  %110 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %111 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %115 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %118 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %117, i32 0, i32 2
  store i32 %116, i32* %118, align 8
  %119 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %120 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %119, i32 0, i32 8
  %121 = load i32, i32* %120, align 8
  %122 = call i8* @upper_32_bits(i32 %121)
  %123 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %124 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %123, i32 0, i32 8
  store i8* %122, i8** %124, align 8
  %125 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %126 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %129 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %128, i32 0, i32 3
  store i32 %127, i32* %129, align 4
  %130 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %131 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @upper_32_bits(i32 %132)
  %134 = ptrtoint i8* %133 to i32
  %135 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %136 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 8
  %137 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %138 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %141 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 4
  %142 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %143 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %142, i32 0, i32 10
  %144 = load i32, i32* %143, align 8
  %145 = call i8* @upper_32_bits(i32 %144)
  %146 = ptrtoint i8* %145 to i32
  %147 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %148 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %147, i32 0, i32 6
  store i32 %146, i32* %148, align 8
  store i32 0, i32* %15, align 4
  br label %149

149:                                              ; preds = %185, %27
  %150 = load i32, i32* %15, align 4
  %151 = load i32, i32* %11, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %188

153:                                              ; preds = %149
  %154 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %155 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %154, i32 0, i32 12
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %15, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %163 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %162, i32 0, i32 7
  %164 = load %struct.TYPE_3__*, %struct.TYPE_3__** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 0
  store i32 %161, i32* %168, align 8
  %169 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %170 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %169, i32 0, i32 12
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @upper_32_bits(i32 %176)
  %178 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %179 = getelementptr inbounds %struct.ocrdma_reg_nsmr, %struct.ocrdma_reg_nsmr* %178, i32 0, i32 7
  %180 = load %struct.TYPE_3__*, %struct.TYPE_3__** %179, align 8
  %181 = load i32, i32* %15, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  store i8* %177, i8** %184, align 8
  br label %185

185:                                              ; preds = %153
  %186 = load i32, i32* %15, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %15, align 4
  br label %149

188:                                              ; preds = %149
  %189 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %8, align 8
  %190 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %191 = bitcast %struct.ocrdma_reg_nsmr* %190 to %struct.ocrdma_mqe*
  %192 = call i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev* %189, %struct.ocrdma_mqe* %191)
  store i32 %192, i32* %14, align 4
  %193 = load i32, i32* %14, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %204

196:                                              ; preds = %188
  %197 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %198 = bitcast %struct.ocrdma_reg_nsmr* %197 to %struct.ocrdma_reg_nsmr_rsp*
  store %struct.ocrdma_reg_nsmr_rsp* %198, %struct.ocrdma_reg_nsmr_rsp** %17, align 8
  %199 = load %struct.ocrdma_reg_nsmr_rsp*, %struct.ocrdma_reg_nsmr_rsp** %17, align 8
  %200 = getelementptr inbounds %struct.ocrdma_reg_nsmr_rsp, %struct.ocrdma_reg_nsmr_rsp* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.ocrdma_hw_mr*, %struct.ocrdma_hw_mr** %9, align 8
  %203 = getelementptr inbounds %struct.ocrdma_hw_mr, %struct.ocrdma_hw_mr* %202, i32 0, i32 11
  store i32 %201, i32* %203, align 4
  br label %204

204:                                              ; preds = %196, %195
  %205 = load %struct.ocrdma_reg_nsmr*, %struct.ocrdma_reg_nsmr** %16, align 8
  %206 = call i32 @kfree(%struct.ocrdma_reg_nsmr* %205)
  %207 = load i32, i32* %14, align 4
  store i32 %207, i32* %7, align 4
  br label %208

208:                                              ; preds = %204, %24
  %209 = load i32, i32* %7, align 4
  ret i32 %209
}

declare dso_local %struct.ocrdma_reg_nsmr* @ocrdma_init_emb_mqe(i32, i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

declare dso_local i32 @ocrdma_mbx_cmd(%struct.ocrdma_dev*, %struct.ocrdma_mqe*) #1

declare dso_local i32 @kfree(%struct.ocrdma_reg_nsmr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
