; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_uio_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_ctrl_set_uio_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { i32, i64 }
%struct.drxuio_cfg = type { i32, i32 }
%struct.drxj_data = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIO_TOP_COMM_KEY__A = common dso_local global i32 0, align 4
@SIO_TOP_COMM_KEY_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@SIO_PDR_SMA_TX_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_SMA_RX_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_GPIO_CFG__A = common dso_local global i32 0, align 4
@SIO_PDR_IRQN_CFG__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*, %struct.drxuio_cfg*)* @ctrl_set_uio_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_set_uio_cfg(%struct.drx_demod_instance* %0, %struct.drxuio_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drx_demod_instance*, align 8
  %5 = alloca %struct.drxuio_cfg*, align 8
  %6 = alloca %struct.drxj_data*, align 8
  %7 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %4, align 8
  store %struct.drxuio_cfg* %1, %struct.drxuio_cfg** %5, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %6, align 8
  %8 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %9 = icmp eq %struct.drxuio_cfg* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %12 = icmp eq %struct.drx_demod_instance* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %210

16:                                               ; preds = %10
  %17 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %18 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.drxj_data*
  store %struct.drxj_data* %20, %struct.drxj_data** %6, align 8
  %21 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %22 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %25 = load i32, i32* @SIO_TOP_COMM_KEY_KEY, align 4
  %26 = call i32 @drxj_dap_write_reg16(i32 %23, i32 %24, i32 %25, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %16
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %208

32:                                               ; preds = %16
  %33 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %34 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %193 [
    i32 136, label %36
    i32 135, label %75
    i32 134, label %114
    i32 133, label %153
  ]

36:                                               ; preds = %32
  %37 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %38 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @EIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %210

44:                                               ; preds = %36
  %45 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %46 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %71 [
    i32 129, label %48
    i32 130, label %48
    i32 128, label %48
    i32 132, label %54
  ]

48:                                               ; preds = %44, %44, %44
  %49 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %50 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %53 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  br label %74

54:                                               ; preds = %44
  %55 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %56 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %59 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %61 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SIO_PDR_SMA_TX_CFG__A, align 4
  %64 = call i32 @drxj_dap_write_reg16(i32 %62, i32 %63, i32 0, i32 0)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %54
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %68)
  br label %208

70:                                               ; preds = %54
  br label %74

71:                                               ; preds = %44
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %210

74:                                               ; preds = %70, %48
  br label %196

75:                                               ; preds = %32
  %76 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %77 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @EIO, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %210

83:                                               ; preds = %75
  %84 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %85 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %110 [
    i32 131, label %87
    i32 128, label %87
    i32 132, label %93
  ]

87:                                               ; preds = %83, %83
  %88 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %89 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %92 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  br label %113

93:                                               ; preds = %83
  %94 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %95 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %98 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %100 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SIO_PDR_SMA_RX_CFG__A, align 4
  %103 = call i32 @drxj_dap_write_reg16(i32 %101, i32 %102, i32 0, i32 0)
  store i32 %103, i32* %7, align 4
  %104 = load i32, i32* %7, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load i32, i32* %7, align 4
  %108 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %208

109:                                              ; preds = %93
  br label %113

110:                                              ; preds = %83
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %210

113:                                              ; preds = %109, %87
  br label %196

114:                                              ; preds = %32
  %115 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %116 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %114
  %120 = load i32, i32* @EIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %210

122:                                              ; preds = %114
  %123 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %124 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  switch i32 %125, label %149 [
    i32 131, label %126
    i32 128, label %126
    i32 132, label %132
  ]

126:                                              ; preds = %122, %122
  %127 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %128 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %131 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  br label %152

132:                                              ; preds = %122
  %133 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %134 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %137 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 4
  %138 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %139 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @SIO_PDR_GPIO_CFG__A, align 4
  %142 = call i32 @drxj_dap_write_reg16(i32 %140, i32 %141, i32 0, i32 0)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %132
  %146 = load i32, i32* %7, align 4
  %147 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %146)
  br label %208

148:                                              ; preds = %132
  br label %152

149:                                              ; preds = %122
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %210

152:                                              ; preds = %148, %126
  br label %196

153:                                              ; preds = %32
  %154 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %155 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = load i32, i32* @EIO, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %3, align 4
  br label %210

161:                                              ; preds = %153
  %162 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %163 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  switch i32 %164, label %189 [
    i32 128, label %165
    i32 132, label %171
    i32 131, label %188
  ]

165:                                              ; preds = %161
  %166 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %167 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %170 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 4
  br label %192

171:                                              ; preds = %161
  %172 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %173 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @SIO_PDR_IRQN_CFG__A, align 4
  %176 = call i32 @drxj_dap_write_reg16(i32 %174, i32 %175, i32 0, i32 0)
  store i32 %176, i32* %7, align 4
  %177 = load i32, i32* %7, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %171
  %180 = load i32, i32* %7, align 4
  %181 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %180)
  br label %208

182:                                              ; preds = %171
  %183 = load %struct.drxuio_cfg*, %struct.drxuio_cfg** %5, align 8
  %184 = getelementptr inbounds %struct.drxuio_cfg, %struct.drxuio_cfg* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.drxj_data*, %struct.drxj_data** %6, align 8
  %187 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %186, i32 0, i32 0
  store i32 %185, i32* %187, align 4
  br label %192

188:                                              ; preds = %161
  br label %189

189:                                              ; preds = %161, %188
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %3, align 4
  br label %210

192:                                              ; preds = %182, %165
  br label %196

193:                                              ; preds = %32
  %194 = load i32, i32* @EINVAL, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %3, align 4
  br label %210

196:                                              ; preds = %192, %152, %113, %74
  %197 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %4, align 8
  %198 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %201 = call i32 @drxj_dap_write_reg16(i32 %199, i32 %200, i32 0, i32 0)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %196
  %205 = load i32, i32* %7, align 4
  %206 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %205)
  br label %208

207:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %210

208:                                              ; preds = %204, %179, %145, %106, %67, %29
  %209 = load i32, i32* %7, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %208, %207, %193, %189, %158, %149, %119, %110, %80, %71, %41, %13
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local i32 @drxj_dap_write_reg16(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
