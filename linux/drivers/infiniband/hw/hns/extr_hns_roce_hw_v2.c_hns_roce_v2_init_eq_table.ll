; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_init_eq_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_hw_v2.c_hns_roce_v2_init_eq_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_roce_dev = type { i32, i32*, %struct.TYPE_2__, %struct.device*, %struct.hns_roce_eq_table }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.device = type { i32 }
%struct.hns_roce_eq_table = type { %struct.hns_roce_eq* }
%struct.hns_roce_eq = type { i32, i32, i32, i32, i32, i32, i32, %struct.hns_roce_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_CREATE_CEQC = common dso_local global i32 0, align 4
@HNS_ROCE_CEQ = common dso_local global i32 0, align 4
@HNS_ROCE_CEQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_CEQ_DEFAULT_BURST_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_CEQ_DEFAULT_INTERVAL = common dso_local global i32 0, align 4
@HNS_ROCE_CMD_CREATE_AEQC = common dso_local global i32 0, align 4
@HNS_ROCE_AEQ = common dso_local global i32 0, align 4
@HNS_ROCE_AEQ_ENTRY_SIZE = common dso_local global i32 0, align 4
@HNS_ROCE_AEQ_DEFAULT_BURST_NUM = common dso_local global i32 0, align 4
@HNS_ROCE_AEQ_DEFAULT_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"eq create failed.\0A\00", align 1
@EQ_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Request irq failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"hns_roce_irq_workqueue\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Create irq workqueue failed!\0A\00", align 1
@EQ_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hns_roce_dev*)* @hns_roce_v2_init_eq_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_roce_v2_init_eq_table(%struct.hns_roce_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hns_roce_dev*, align 8
  %4 = alloca %struct.hns_roce_eq_table*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hns_roce_eq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hns_roce_dev* %0, %struct.hns_roce_dev** %3, align 8
  %15 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %15, i32 0, i32 4
  store %struct.hns_roce_eq_table* %16, %struct.hns_roce_eq_table** %4, align 8
  %17 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %18 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %17, i32 0, i32 3
  %19 = load %struct.device*, %struct.device** %18, align 8
  store %struct.device* %19, %struct.device** %5, align 8
  %20 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %10, align 4
  %24 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %25 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %32, %33
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.hns_roce_eq* @kcalloc(i32 %38, i32 40, i32 %39)
  %41 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %4, align 8
  %42 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %41, i32 0, i32 0
  store %struct.hns_roce_eq* %40, %struct.hns_roce_eq** %42, align 8
  %43 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %4, align 8
  %44 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %43, i32 0, i32 0
  %45 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %44, align 8
  %46 = icmp ne %struct.hns_roce_eq* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %1
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %213

50:                                               ; preds = %1
  store i32 0, i32* %13, align 4
  br label %51

51:                                               ; preds = %148, %50
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %151

55:                                               ; preds = %51
  %56 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %4, align 8
  %57 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %56, i32 0, i32 0
  %58 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %57, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %58, i64 %60
  store %struct.hns_roce_eq* %61, %struct.hns_roce_eq** %6, align 8
  %62 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %63 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %64 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %63, i32 0, i32 7
  store %struct.hns_roce_dev* %62, %struct.hns_roce_dev** %64, align 8
  %65 = load i32, i32* %13, align 4
  %66 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %67 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %104

71:                                               ; preds = %55
  %72 = load i32, i32* @HNS_ROCE_CMD_CREATE_CEQC, align 4
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @HNS_ROCE_CEQ, align 4
  %74 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %75 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %74, i32 0, i32 6
  store i32 %73, i32* %75, align 8
  %76 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %77 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %81 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %80, i32 0, i32 5
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @HNS_ROCE_CEQ_ENTRY_SIZE, align 4
  %83 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %84 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 8
  %85 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %86 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %90, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %87, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %97 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @HNS_ROCE_CEQ_DEFAULT_BURST_NUM, align 4
  %99 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %100 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @HNS_ROCE_CEQ_DEFAULT_INTERVAL, align 4
  %102 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %103 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %137

104:                                              ; preds = %55
  %105 = load i32, i32* @HNS_ROCE_CMD_CREATE_AEQC, align 4
  store i32 %105, i32* %7, align 4
  %106 = load i32, i32* @HNS_ROCE_AEQ, align 4
  %107 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %108 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 8
  %109 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %110 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %114 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %113, i32 0, i32 5
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @HNS_ROCE_AEQ_ENTRY_SIZE, align 4
  %116 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %117 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %116, i32 0, i32 4
  store i32 %115, i32* %117, align 8
  %118 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %119 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %130 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %129, i32 0, i32 3
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @HNS_ROCE_AEQ_DEFAULT_BURST_NUM, align 4
  %132 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %133 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @HNS_ROCE_AEQ_DEFAULT_INTERVAL, align 4
  %135 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %136 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %135, i32 0, i32 1
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %104, %71
  %138 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %139 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %6, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @hns_roce_v2_create_eq(%struct.hns_roce_dev* %138, %struct.hns_roce_eq* %139, i32 %140)
  store i32 %141, i32* %14, align 4
  %142 = load i32, i32* %14, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load %struct.device*, %struct.device** %5, align 8
  %146 = call i32 @dev_err(%struct.device* %145, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %189

147:                                              ; preds = %137
  br label %148

148:                                              ; preds = %147
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %51

151:                                              ; preds = %51
  %152 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %153 = load i32, i32* %9, align 4
  %154 = load i32, i32* @EQ_ENABLE, align 4
  %155 = call i32 @hns_roce_v2_int_mask_enable(%struct.hns_roce_dev* %152, i32 %153, i32 %154)
  %156 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %157 = load i32, i32* %8, align 4
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* %10, align 4
  %161 = call i32 @__hns_roce_request_irq(%struct.hns_roce_dev* %156, i32 %157, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %151
  %165 = load %struct.device*, %struct.device** %5, align 8
  %166 = call i32 @dev_err(%struct.device* %165, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %184

167:                                              ; preds = %151
  %168 = call i32 @create_singlethread_workqueue(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %169 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %170 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %169, i32 0, i32 0
  store i32 %168, i32* %170, align 8
  %171 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %172 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %167
  %176 = load %struct.device*, %struct.device** %5, align 8
  %177 = call i32 @dev_err(%struct.device* %176, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %178 = load i32, i32* @ENOMEM, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %14, align 4
  br label %181

180:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %213

181:                                              ; preds = %175
  %182 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %183 = call i32 @__hns_roce_free_irq(%struct.hns_roce_dev* %182)
  br label %184

184:                                              ; preds = %181, %164
  %185 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %186 = load i32, i32* %9, align 4
  %187 = load i32, i32* @EQ_DISABLE, align 4
  %188 = call i32 @hns_roce_v2_int_mask_enable(%struct.hns_roce_dev* %185, i32 %186, i32 %187)
  br label %189

189:                                              ; preds = %184, %144
  %190 = load i32, i32* %13, align 4
  %191 = sub nsw i32 %190, 1
  store i32 %191, i32* %13, align 4
  br label %192

192:                                              ; preds = %204, %189
  %193 = load i32, i32* %13, align 4
  %194 = icmp sge i32 %193, 0
  br i1 %194, label %195, label %207

195:                                              ; preds = %192
  %196 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %3, align 8
  %197 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %4, align 8
  %198 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %197, i32 0, i32 0
  %199 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.hns_roce_eq, %struct.hns_roce_eq* %199, i64 %201
  %203 = call i32 @hns_roce_v2_free_eq(%struct.hns_roce_dev* %196, %struct.hns_roce_eq* %202)
  br label %204

204:                                              ; preds = %195
  %205 = load i32, i32* %13, align 4
  %206 = add nsw i32 %205, -1
  store i32 %206, i32* %13, align 4
  br label %192

207:                                              ; preds = %192
  %208 = load %struct.hns_roce_eq_table*, %struct.hns_roce_eq_table** %4, align 8
  %209 = getelementptr inbounds %struct.hns_roce_eq_table, %struct.hns_roce_eq_table* %208, i32 0, i32 0
  %210 = load %struct.hns_roce_eq*, %struct.hns_roce_eq** %209, align 8
  %211 = call i32 @kfree(%struct.hns_roce_eq* %210)
  %212 = load i32, i32* %14, align 4
  store i32 %212, i32* %2, align 4
  br label %213

213:                                              ; preds = %207, %180, %47
  %214 = load i32, i32* %2, align 4
  ret i32 %214
}

declare dso_local %struct.hns_roce_eq* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @hns_roce_v2_create_eq(%struct.hns_roce_dev*, %struct.hns_roce_eq*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @hns_roce_v2_int_mask_enable(%struct.hns_roce_dev*, i32, i32) #1

declare dso_local i32 @__hns_roce_request_irq(%struct.hns_roce_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @__hns_roce_free_irq(%struct.hns_roce_dev*) #1

declare dso_local i32 @hns_roce_v2_free_eq(%struct.hns_roce_dev*, %struct.hns_roce_eq*) #1

declare dso_local i32 @kfree(%struct.hns_roce_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
