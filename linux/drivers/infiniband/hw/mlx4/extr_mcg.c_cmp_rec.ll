; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_cmp_rec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mcg.c_cmp_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_mcmember_data = type { i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@IB_SA_MCMEMBER_REC_QKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MLID = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_MTU = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PKEY = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_RATE = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME_SELECTOR = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_FLOW_LABEL = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_HOP_LIMIT = common dso_local global i32 0, align 4
@IB_SA_MCMEMBER_REC_SCOPE = common dso_local global i32 0, align 4
@MAD_STATUS_REQ_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data*, i32)* @cmp_rec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmp_rec(%struct.ib_sa_mcmember_data* %0, %struct.ib_sa_mcmember_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_sa_mcmember_data*, align 8
  %6 = alloca %struct.ib_sa_mcmember_data*, align 8
  %7 = alloca i32, align 4
  store %struct.ib_sa_mcmember_data* %0, %struct.ib_sa_mcmember_data** %5, align 8
  store %struct.ib_sa_mcmember_data* %1, %struct.ib_sa_mcmember_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IB_SA_MCMEMBER_REC_QKEY, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %14 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %17 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 512, i32* %4, align 4
  br label %173

21:                                               ; preds = %12, %3
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @IB_SA_MCMEMBER_REC_MLID, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %28 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %31 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 512, i32* %4, align 4
  br label %173

35:                                               ; preds = %26, %21
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU_SELECTOR, align 4
  %38 = load i32, i32* @IB_SA_MCMEMBER_REC_MTU, align 4
  %39 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %40 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %43 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @check_selector(i32 %36, i32 %37, i32 %38, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 512, i32* %4, align 4
  br label %173

48:                                               ; preds = %35
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @IB_SA_MCMEMBER_REC_TRAFFIC_CLASS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %55 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %58 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  store i32 512, i32* %4, align 4
  br label %173

62:                                               ; preds = %53, %48
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @IB_SA_MCMEMBER_REC_PKEY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %62
  %68 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %69 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %72 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %70, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  store i32 512, i32* %4, align 4
  br label %173

76:                                               ; preds = %67, %62
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE_SELECTOR, align 4
  %79 = load i32, i32* @IB_SA_MCMEMBER_REC_RATE, align 4
  %80 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %81 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %80, i32 0, i32 7
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %84 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @check_selector(i32 %77, i32 %78, i32 %79, i32 %82, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  store i32 512, i32* %4, align 4
  br label %173

89:                                               ; preds = %76
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* @IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME_SELECTOR, align 4
  %92 = load i32, i32* @IB_SA_MCMEMBER_REC_PACKET_LIFE_TIME, align 4
  %93 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %94 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %93, i32 0, i32 6
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %97 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @check_selector(i32 %90, i32 %91, i32 %92, i32 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %89
  store i32 512, i32* %4, align 4
  br label %173

102:                                              ; preds = %89
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @IB_SA_MCMEMBER_REC_SL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %102
  %108 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %109 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @be32_to_cpu(i32 %110)
  %112 = and i32 %111, -268435456
  %113 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %114 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @be32_to_cpu(i32 %115)
  %117 = and i32 %116, -268435456
  %118 = icmp ne i32 %112, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  store i32 512, i32* %4, align 4
  br label %173

120:                                              ; preds = %107, %102
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* @IB_SA_MCMEMBER_REC_FLOW_LABEL, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %138

125:                                              ; preds = %120
  %126 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %127 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %126, i32 0, i32 5
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @be32_to_cpu(i32 %128)
  %130 = and i32 %129, 268435200
  %131 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %132 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @be32_to_cpu(i32 %133)
  %135 = and i32 %134, 268435200
  %136 = icmp ne i32 %130, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  store i32 512, i32* %4, align 4
  br label %173

138:                                              ; preds = %125, %120
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @IB_SA_MCMEMBER_REC_HOP_LIMIT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %138
  %144 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %145 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @be32_to_cpu(i32 %146)
  %148 = and i32 %147, 255
  %149 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %150 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @be32_to_cpu(i32 %151)
  %153 = and i32 %152, 255
  %154 = icmp ne i32 %148, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  store i32 512, i32* %4, align 4
  br label %173

156:                                              ; preds = %143, %138
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @IB_SA_MCMEMBER_REC_SCOPE, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %172

161:                                              ; preds = %156
  %162 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %5, align 8
  %163 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, 240
  %166 = load %struct.ib_sa_mcmember_data*, %struct.ib_sa_mcmember_data** %6, align 8
  %167 = getelementptr inbounds %struct.ib_sa_mcmember_data, %struct.ib_sa_mcmember_data* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, 240
  %170 = icmp ne i32 %165, %169
  br i1 %170, label %171, label %172

171:                                              ; preds = %161
  store i32 512, i32* %4, align 4
  br label %173

172:                                              ; preds = %161, %156
  store i32 0, i32* %4, align 4
  br label %173

173:                                              ; preds = %172, %171, %155, %137, %119, %101, %88, %75, %61, %47, %34, %20
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

declare dso_local i64 @check_selector(i32, i32, i32, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
