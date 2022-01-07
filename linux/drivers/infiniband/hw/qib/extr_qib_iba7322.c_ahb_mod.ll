; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_ahb_mod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_iba7322.c_ahb_mod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { i32 }

@KR_AHB_ACC = common dso_local global i32 0, align 4
@AHB_TRANS_TRIES = common dso_local global i32 0, align 4
@KR_AHB_TRANS = common dso_local global i32 0, align 4
@AHB_TRANS_RDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"No ahb_rdy in %d tries\0A\00", align 1
@AHB_ADDR_LSB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No Rd ahb_rdy in %d tries\0A\00", align 1
@AHB_DATA_LSB = common dso_local global i32 0, align 4
@AHB_WR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"No Wr ahb_rdy in %d tries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32, i32, i32, i32)* @ahb_mod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahb_mod(%struct.qib_devdata* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.qib_devdata*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.qib_devdata* %0, %struct.qib_devdata** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 195890093, i32* %19, align 4
  %21 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %22 = load i32, i32* @KR_AHB_ACC, align 4
  %23 = call i32 @qib_read_kreg64(%struct.qib_devdata* %21, i32 %22)
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %8, align 4
  %25 = shl i32 %24, 1
  %26 = or i32 %25, 1
  store i32 %26, i32* %17, align 4
  %27 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %28 = load i32, i32* @KR_AHB_ACC, align 4
  %29 = load i32, i32* %17, align 4
  %30 = call i32 @qib_write_kreg(%struct.qib_devdata* %27, i32 %28, i32 %29)
  store i32 1, i32* %20, align 4
  br label %31

31:                                               ; preds = %45, %6
  %32 = load i32, i32* %20, align 4
  %33 = load i32, i32* @AHB_TRANS_TRIES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %37 = load i32, i32* @KR_AHB_TRANS, align 4
  %38 = call i32 @qib_read_kreg64(%struct.qib_devdata* %36, i32 %37)
  store i32 %38, i32* %16, align 4
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* @AHB_TRANS_RDY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  br label %48

44:                                               ; preds = %35
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %20, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %20, align 4
  br label %31

48:                                               ; preds = %43, %31
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* @AHB_TRANS_TRIES, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %54 = load i32, i32* @AHB_TRANS_TRIES, align 4
  %55 = call i32 @qib_dev_err(%struct.qib_devdata* %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %180

56:                                               ; preds = %48
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 1
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 32, i32 16
  %61 = zext i32 %60 to i64
  %62 = shl i64 1, %61
  %63 = sub i64 %62, 1
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %15, align 4
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %65, %66
  %68 = load i32, i32* %15, align 4
  %69 = and i32 %67, %68
  store i32 %69, i32* %14, align 4
  %70 = load i32, i32* %12, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %15, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %127

75:                                               ; preds = %56
  %76 = load i32, i32* %9, align 4
  %77 = shl i32 %76, 6
  %78 = load i32, i32* %10, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @AHB_ADDR_LSB, align 4
  %81 = add nsw i32 %80, 1
  %82 = shl i32 %79, %81
  store i32 %82, i32* %16, align 4
  %83 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %84 = load i32, i32* @KR_AHB_TRANS, align 4
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @qib_write_kreg(%struct.qib_devdata* %83, i32 %84, i32 %85)
  store i32 1, i32* %20, align 4
  br label %87

87:                                               ; preds = %101, %75
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* @AHB_TRANS_TRIES, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %93 = load i32, i32* @KR_AHB_TRANS, align 4
  %94 = call i32 @qib_read_kreg64(%struct.qib_devdata* %92, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @AHB_TRANS_RDY, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %104

100:                                              ; preds = %91
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %20, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %20, align 4
  br label %87

104:                                              ; preds = %99, %87
  %105 = load i32, i32* %20, align 4
  %106 = load i32, i32* @AHB_TRANS_TRIES, align 4
  %107 = icmp sge i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %110 = load i32, i32* @AHB_TRANS_TRIES, align 4
  %111 = call i32 @qib_dev_err(%struct.qib_devdata* %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  br label %180

112:                                              ; preds = %104
  %113 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %114 = load i32, i32* @KR_AHB_TRANS, align 4
  %115 = call i32 @qib_read_kreg64(%struct.qib_devdata* %113, i32 %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  %117 = load i32, i32* @AHB_DATA_LSB, align 4
  %118 = ashr i32 %116, %117
  store i32 %118, i32* %13, align 4
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %12, align 4
  %121 = xor i32 %120, -1
  %122 = and i32 %119, %121
  %123 = load i32, i32* %15, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* %14, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %112, %56
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* %15, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %178

132:                                              ; preds = %127
  %133 = load i32, i32* %9, align 4
  %134 = shl i32 %133, 6
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @AHB_ADDR_LSB, align 4
  %138 = add nsw i32 %137, 1
  %139 = shl i32 %136, %138
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %14, align 4
  %141 = load i32, i32* @AHB_DATA_LSB, align 4
  %142 = shl i32 %140, %141
  %143 = load i32, i32* %16, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %16, align 4
  %145 = load i32, i32* @AHB_WR, align 4
  %146 = load i32, i32* %16, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %16, align 4
  %148 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %149 = load i32, i32* @KR_AHB_TRANS, align 4
  %150 = load i32, i32* %16, align 4
  %151 = call i32 @qib_write_kreg(%struct.qib_devdata* %148, i32 %149, i32 %150)
  store i32 1, i32* %20, align 4
  br label %152

152:                                              ; preds = %166, %132
  %153 = load i32, i32* %20, align 4
  %154 = load i32, i32* @AHB_TRANS_TRIES, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %169

156:                                              ; preds = %152
  %157 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %158 = load i32, i32* @KR_AHB_TRANS, align 4
  %159 = call i32 @qib_read_kreg64(%struct.qib_devdata* %157, i32 %158)
  store i32 %159, i32* %16, align 4
  %160 = load i32, i32* %16, align 4
  %161 = load i32, i32* @AHB_TRANS_RDY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %169

165:                                              ; preds = %156
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %20, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %20, align 4
  br label %152

169:                                              ; preds = %164, %152
  %170 = load i32, i32* %20, align 4
  %171 = load i32, i32* @AHB_TRANS_TRIES, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %175 = load i32, i32* @AHB_TRANS_TRIES, align 4
  %176 = call i32 @qib_dev_err(%struct.qib_devdata* %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %175)
  br label %180

177:                                              ; preds = %169
  br label %178

178:                                              ; preds = %177, %127
  %179 = load i32, i32* %14, align 4
  store i32 %179, i32* %19, align 4
  br label %180

180:                                              ; preds = %178, %173, %108, %52
  %181 = load %struct.qib_devdata*, %struct.qib_devdata** %7, align 8
  %182 = load i32, i32* @KR_AHB_ACC, align 4
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @qib_write_kreg(%struct.qib_devdata* %181, i32 %182, i32 %183)
  %185 = load i32, i32* %19, align 4
  ret i32 %185
}

declare dso_local i32 @qib_read_kreg64(%struct.qib_devdata*, i32) #1

declare dso_local i32 @qib_write_kreg(%struct.qib_devdata*, i32, i32) #1

declare dso_local i32 @qib_dev_err(%struct.qib_devdata*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
