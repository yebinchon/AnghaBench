; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_get_device_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/drx39xyj/extr_drxj.c_get_device_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drx_demod_instance = type { %struct.i2c_device_addr*, i64, i64 }
%struct.i2c_device_addr = type { i32 }
%struct.drx_common_attr = type { i32 }
%struct.drxj_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@SIO_TOP_COMM_KEY__A = common dso_local global i32 0, align 4
@SIO_TOP_COMM_KEY_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"error %d\0A\00", align 1
@SIO_PDR_OHW_CFG__A = common dso_local global i32 0, align 4
@SIO_TOP_COMM_KEY__PRE = common dso_local global i32 0, align 4
@SIO_PDR_OHW_CFG_FREF_SEL__M = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SIO_TOP_JTAGID_LO__A = common dso_local global i32 0, align 4
@SIO_PDR_UIO_IN_HI__A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drx_demod_instance*)* @get_device_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_device_capabilities(%struct.drx_demod_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drx_demod_instance*, align 8
  %4 = alloca %struct.drx_common_attr*, align 8
  %5 = alloca %struct.drxj_data*, align 8
  %6 = alloca %struct.i2c_device_addr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.drx_demod_instance* %0, %struct.drx_demod_instance** %3, align 8
  store %struct.drx_common_attr* null, %struct.drx_common_attr** %4, align 8
  store %struct.drxj_data* null, %struct.drxj_data** %5, align 8
  store %struct.i2c_device_addr* null, %struct.i2c_device_addr** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %12 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.drx_common_attr*
  store %struct.drx_common_attr* %14, %struct.drx_common_attr** %4, align 8
  %15 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %16 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.drxj_data*
  store %struct.drxj_data* %18, %struct.drxj_data** %5, align 8
  %19 = load %struct.drx_demod_instance*, %struct.drx_demod_instance** %3, align 8
  %20 = getelementptr inbounds %struct.drx_demod_instance, %struct.drx_demod_instance* %19, i32 0, i32 0
  %21 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %20, align 8
  store %struct.i2c_device_addr* %21, %struct.i2c_device_addr** %6, align 8
  %22 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %23 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %24 = load i32, i32* @SIO_TOP_COMM_KEY_KEY, align 4
  %25 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %22, i32 %23, i32 %24, i32 0)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %292

31:                                               ; preds = %1
  %32 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %33 = load i32, i32* @SIO_PDR_OHW_CFG__A, align 4
  %34 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %32, i32 %33, i32* %7, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %292

40:                                               ; preds = %31
  %41 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %42 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %43 = load i32, i32* @SIO_TOP_COMM_KEY__PRE, align 4
  %44 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %41, i32 %42, i32 %43, i32 0)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %292

50:                                               ; preds = %40
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @SIO_PDR_OHW_CFG_FREF_SEL__M, align 4
  %53 = and i32 %51, %52
  switch i32 %53, label %64 [
    i32 0, label %54
    i32 1, label %55
    i32 2, label %58
    i32 3, label %61
  ]

54:                                               ; preds = %50
  br label %67

55:                                               ; preds = %50
  %56 = load %struct.drx_common_attr*, %struct.drx_common_attr** %4, align 8
  %57 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %56, i32 0, i32 0
  store i32 27000, i32* %57, align 4
  br label %67

58:                                               ; preds = %50
  %59 = load %struct.drx_common_attr*, %struct.drx_common_attr** %4, align 8
  %60 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %59, i32 0, i32 0
  store i32 20250, i32* %60, align 4
  br label %67

61:                                               ; preds = %50
  %62 = load %struct.drx_common_attr*, %struct.drx_common_attr** %4, align 8
  %63 = getelementptr inbounds %struct.drx_common_attr, %struct.drx_common_attr* %62, i32 0, i32 0
  store i32 4000, i32* %63, align 4
  br label %67

64:                                               ; preds = %50
  %65 = load i32, i32* @EIO, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %294

67:                                               ; preds = %61, %58, %55, %54
  %68 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %69 = load i32, i32* @SIO_TOP_JTAGID_LO__A, align 4
  %70 = call i32 @drxdap_fasi_read_reg32(%struct.i2c_device_addr* %68, i32 %69, i32* %8, i32 0)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %74)
  br label %292

76:                                               ; preds = %67
  %77 = load i32, i32* %8, align 4
  %78 = ashr i32 %77, 29
  %79 = and i32 %78, 15
  %80 = sext i32 %79 to i64
  %81 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %82 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %81, i32 0, i32 8
  store i64 %80, i64* %82, align 8
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 12
  %85 = and i32 %84, 255
  switch i32 %85, label %288 [
    i32 49, label %86
    i32 51, label %135
    i32 69, label %152
    i32 70, label %169
    i32 65, label %186
    i32 67, label %203
    i32 50, label %220
    i32 52, label %237
    i32 66, label %254
    i32 68, label %271
  ]

86:                                               ; preds = %76
  %87 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %88 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %89 = load i32, i32* @SIO_TOP_COMM_KEY_KEY, align 4
  %90 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %87, i32 %88, i32 %89, i32 0)
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %292

96:                                               ; preds = %86
  %97 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %98 = load i32, i32* @SIO_PDR_UIO_IN_HI__A, align 4
  %99 = call i32 @drxj_dap_read_reg16(%struct.i2c_device_addr* %97, i32 %98, i32* %9, i32 0)
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %103)
  br label %292

105:                                              ; preds = %96
  %106 = load i32, i32* %9, align 4
  %107 = ashr i32 %106, 10
  %108 = and i32 %107, 15
  store i32 %108, i32* %9, align 4
  %109 = load %struct.i2c_device_addr*, %struct.i2c_device_addr** %6, align 8
  %110 = load i32, i32* @SIO_TOP_COMM_KEY__A, align 4
  %111 = load i32, i32* @SIO_TOP_COMM_KEY__PRE, align 4
  %112 = call i32 @drxj_dap_write_reg16(%struct.i2c_device_addr* %109, i32 %110, i32 %111, i32 0)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %105
  %116 = load i32, i32* %10, align 4
  %117 = call i32 @pr_err(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %116)
  br label %292

118:                                              ; preds = %105
  %119 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %120 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %119, i32 0, i32 0
  store i32 1, i32* %120, align 8
  %121 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %122 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %121, i32 0, i32 1
  store i32 0, i32* %122, align 4
  %123 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %124 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %123, i32 0, i32 2
  store i32 0, i32* %124, align 8
  %125 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %126 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %125, i32 0, i32 3
  store i32 0, i32* %126, align 4
  %127 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %128 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %127, i32 0, i32 4
  store i32 1, i32* %128, align 8
  %129 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %130 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %129, i32 0, i32 5
  store i32 0, i32* %130, align 4
  %131 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %132 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %131, i32 0, i32 6
  store i32 0, i32* %132, align 8
  %133 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %134 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %133, i32 0, i32 7
  store i32 0, i32* %134, align 4
  br label %291

135:                                              ; preds = %76
  %136 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %137 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %136, i32 0, i32 0
  store i32 0, i32* %137, align 8
  %138 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %139 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %138, i32 0, i32 1
  store i32 0, i32* %139, align 4
  %140 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %141 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %140, i32 0, i32 2
  store i32 0, i32* %141, align 8
  %142 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %143 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %142, i32 0, i32 3
  store i32 0, i32* %143, align 4
  %144 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %145 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %144, i32 0, i32 4
  store i32 1, i32* %145, align 8
  %146 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %147 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %146, i32 0, i32 5
  store i32 0, i32* %147, align 4
  %148 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %149 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %148, i32 0, i32 6
  store i32 0, i32* %149, align 8
  %150 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %151 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %150, i32 0, i32 7
  store i32 0, i32* %151, align 4
  br label %291

152:                                              ; preds = %76
  %153 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %154 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %153, i32 0, i32 0
  store i32 1, i32* %154, align 8
  %155 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %156 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %155, i32 0, i32 1
  store i32 1, i32* %156, align 4
  %157 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %158 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %157, i32 0, i32 2
  store i32 0, i32* %158, align 8
  %159 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %160 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %159, i32 0, i32 3
  store i32 0, i32* %160, align 4
  %161 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %162 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %161, i32 0, i32 4
  store i32 1, i32* %162, align 8
  %163 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %164 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %163, i32 0, i32 5
  store i32 1, i32* %164, align 4
  %165 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %166 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %165, i32 0, i32 6
  store i32 1, i32* %166, align 8
  %167 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %168 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %167, i32 0, i32 7
  store i32 0, i32* %168, align 4
  br label %291

169:                                              ; preds = %76
  %170 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %171 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %170, i32 0, i32 0
  store i32 0, i32* %171, align 8
  %172 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %173 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %172, i32 0, i32 1
  store i32 1, i32* %173, align 4
  %174 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %175 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %174, i32 0, i32 2
  store i32 0, i32* %175, align 8
  %176 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %177 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %176, i32 0, i32 3
  store i32 0, i32* %177, align 4
  %178 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %179 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %178, i32 0, i32 4
  store i32 1, i32* %179, align 8
  %180 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %181 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %180, i32 0, i32 5
  store i32 1, i32* %181, align 4
  %182 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %183 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %182, i32 0, i32 6
  store i32 1, i32* %183, align 8
  %184 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %185 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %184, i32 0, i32 7
  store i32 0, i32* %185, align 4
  br label %291

186:                                              ; preds = %76
  %187 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %188 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  %189 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %190 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %189, i32 0, i32 1
  store i32 1, i32* %190, align 4
  %191 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %192 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %191, i32 0, i32 2
  store i32 1, i32* %192, align 8
  %193 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %194 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %193, i32 0, i32 3
  store i32 0, i32* %194, align 4
  %195 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %196 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %195, i32 0, i32 4
  store i32 1, i32* %196, align 8
  %197 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %198 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %197, i32 0, i32 5
  store i32 1, i32* %198, align 4
  %199 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %200 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %199, i32 0, i32 6
  store i32 1, i32* %200, align 8
  %201 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %202 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %201, i32 0, i32 7
  store i32 0, i32* %202, align 4
  br label %291

203:                                              ; preds = %76
  %204 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %205 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %204, i32 0, i32 0
  store i32 0, i32* %205, align 8
  %206 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %207 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %206, i32 0, i32 1
  store i32 1, i32* %207, align 4
  %208 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %209 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %208, i32 0, i32 2
  store i32 1, i32* %209, align 8
  %210 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %211 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %210, i32 0, i32 3
  store i32 0, i32* %211, align 4
  %212 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %213 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %212, i32 0, i32 4
  store i32 1, i32* %213, align 8
  %214 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %215 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %214, i32 0, i32 5
  store i32 1, i32* %215, align 4
  %216 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %217 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %216, i32 0, i32 6
  store i32 1, i32* %217, align 8
  %218 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %219 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %218, i32 0, i32 7
  store i32 0, i32* %219, align 4
  br label %291

220:                                              ; preds = %76
  %221 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %222 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %221, i32 0, i32 0
  store i32 1, i32* %222, align 8
  %223 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %224 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %223, i32 0, i32 1
  store i32 0, i32* %224, align 4
  %225 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %226 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %225, i32 0, i32 2
  store i32 0, i32* %226, align 8
  %227 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %228 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %227, i32 0, i32 3
  store i32 1, i32* %228, align 4
  %229 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %230 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %229, i32 0, i32 4
  store i32 1, i32* %230, align 8
  %231 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %232 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %231, i32 0, i32 5
  store i32 1, i32* %232, align 4
  %233 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %234 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %233, i32 0, i32 6
  store i32 1, i32* %234, align 8
  %235 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %236 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %235, i32 0, i32 7
  store i32 1, i32* %236, align 4
  br label %291

237:                                              ; preds = %76
  %238 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %239 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %238, i32 0, i32 0
  store i32 0, i32* %239, align 8
  %240 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %241 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %240, i32 0, i32 1
  store i32 1, i32* %241, align 4
  %242 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %243 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %242, i32 0, i32 2
  store i32 1, i32* %243, align 8
  %244 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %245 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %244, i32 0, i32 3
  store i32 1, i32* %245, align 4
  %246 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %247 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %246, i32 0, i32 4
  store i32 1, i32* %247, align 8
  %248 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %249 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %248, i32 0, i32 5
  store i32 1, i32* %249, align 4
  %250 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %251 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %250, i32 0, i32 6
  store i32 1, i32* %251, align 8
  %252 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %253 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %252, i32 0, i32 7
  store i32 1, i32* %253, align 4
  br label %291

254:                                              ; preds = %76
  %255 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %256 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %255, i32 0, i32 0
  store i32 1, i32* %256, align 8
  %257 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %258 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %257, i32 0, i32 1
  store i32 1, i32* %258, align 4
  %259 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %260 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %259, i32 0, i32 2
  store i32 1, i32* %260, align 8
  %261 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %262 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %261, i32 0, i32 3
  store i32 1, i32* %262, align 4
  %263 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %264 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %263, i32 0, i32 4
  store i32 1, i32* %264, align 8
  %265 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %266 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %265, i32 0, i32 5
  store i32 1, i32* %266, align 4
  %267 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %268 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %267, i32 0, i32 6
  store i32 1, i32* %268, align 8
  %269 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %270 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %269, i32 0, i32 7
  store i32 1, i32* %270, align 4
  br label %291

271:                                              ; preds = %76
  %272 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %273 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %272, i32 0, i32 0
  store i32 0, i32* %273, align 8
  %274 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %275 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %274, i32 0, i32 1
  store i32 1, i32* %275, align 4
  %276 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %277 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %276, i32 0, i32 2
  store i32 1, i32* %277, align 8
  %278 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %279 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %278, i32 0, i32 3
  store i32 1, i32* %279, align 4
  %280 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %281 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %280, i32 0, i32 4
  store i32 1, i32* %281, align 8
  %282 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %283 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %282, i32 0, i32 5
  store i32 1, i32* %283, align 4
  %284 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %285 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %284, i32 0, i32 6
  store i32 1, i32* %285, align 8
  %286 = load %struct.drxj_data*, %struct.drxj_data** %5, align 8
  %287 = getelementptr inbounds %struct.drxj_data, %struct.drxj_data* %286, i32 0, i32 7
  store i32 1, i32* %287, align 4
  br label %291

288:                                              ; preds = %76
  %289 = load i32, i32* @EIO, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %2, align 4
  br label %294

291:                                              ; preds = %271, %254, %237, %220, %203, %186, %169, %152, %135, %118
  store i32 0, i32* %2, align 4
  br label %294

292:                                              ; preds = %115, %102, %93, %73, %47, %37, %28
  %293 = load i32, i32* %10, align 4
  store i32 %293, i32* %2, align 4
  br label %294

294:                                              ; preds = %292, %291, %288, %64
  %295 = load i32, i32* %2, align 4
  ret i32 %295
}

declare dso_local i32 @drxj_dap_write_reg16(%struct.i2c_device_addr*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @drxj_dap_read_reg16(%struct.i2c_device_addr*, i32, i32*, i32) #1

declare dso_local i32 @drxdap_fasi_read_reg32(%struct.i2c_device_addr*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
