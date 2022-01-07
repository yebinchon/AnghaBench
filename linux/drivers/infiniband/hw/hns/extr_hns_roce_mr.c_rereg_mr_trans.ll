; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_rereg_mr_trans.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hns/extr_hns_roce_mr.c_rereg_mr_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.hns_roce_cmd_mailbox = type { i32 }
%struct.ib_udata = type { i32 }
%struct.hns_roce_dev = type { %struct.TYPE_4__, %struct.TYPE_3__*, %struct.device* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32, i32, i32, i32)* }
%struct.hns_roce_mr = type { i64, i32*, i32, i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mr*, i32, i32, i32, i32, i32, %struct.hns_roce_cmd_mailbox*, i32, %struct.ib_udata*)* @rereg_mr_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rereg_mr_trans(%struct.ib_mr* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, %struct.hns_roce_cmd_mailbox* %6, i32 %7, %struct.ib_udata* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.ib_mr*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.hns_roce_cmd_mailbox*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.ib_udata*, align 8
  %20 = alloca %struct.hns_roce_dev*, align 8
  %21 = alloca %struct.hns_roce_mr*, align 8
  %22 = alloca %struct.device*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store %struct.hns_roce_cmd_mailbox* %6, %struct.hns_roce_cmd_mailbox** %17, align 8
  store i32 %7, i32* %18, align 4
  store %struct.ib_udata* %8, %struct.ib_udata** %19, align 8
  %25 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %26 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.hns_roce_dev* @to_hr_dev(i32 %27)
  store %struct.hns_roce_dev* %28, %struct.hns_roce_dev** %20, align 8
  %29 = load %struct.ib_mr*, %struct.ib_mr** %11, align 8
  %30 = call %struct.hns_roce_mr* @to_hr_mr(%struct.ib_mr* %29)
  store %struct.hns_roce_mr* %30, %struct.hns_roce_mr** %21, align 8
  %31 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %32 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %31, i32 0, i32 2
  %33 = load %struct.device*, %struct.device** %32, align 8
  store %struct.device* %33, %struct.device** %22, align 8
  %34 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %35 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, -1
  br i1 %37, label %38, label %64

38:                                               ; preds = %9
  %39 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %40 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @ib_umem_page_count(i32* %41)
  store i32 %42, i32* %23, align 4
  %43 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %44 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %50 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %51 = call i32 @hns_roce_mhop_free(%struct.hns_roce_dev* %49, %struct.hns_roce_mr* %50)
  br label %63

52:                                               ; preds = %38
  %53 = load %struct.device*, %struct.device** %22, align 8
  %54 = load i32, i32* %23, align 4
  %55 = mul nsw i32 %54, 8
  %56 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %57 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %60 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @dma_free_coherent(%struct.device* %53, i32 %55, i32 %58, i32 %61)
  br label %63

63:                                               ; preds = %52, %48
  br label %64

64:                                               ; preds = %63, %9
  %65 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %66 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @ib_umem_release(i32* %67)
  %69 = load %struct.ib_udata*, %struct.ib_udata** %19, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = call i32* @ib_umem_get(%struct.ib_udata* %69, i32 %70, i32 %71, i32 %72, i32 0)
  %74 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %75 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %77 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = call i64 @IS_ERR(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %64
  %82 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %83 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @PTR_ERR(i32* %84)
  store i32 %85, i32* %24, align 4
  %86 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %87 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %86, i32 0, i32 1
  store i32* null, i32** %87, align 8
  %88 = load i32, i32* @ENOMEM, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %195

90:                                               ; preds = %64
  %91 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %92 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @ib_umem_page_count(i32* %93)
  store i32 %94, i32* %23, align 4
  %95 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %96 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %109

100:                                              ; preds = %90
  %101 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %102 = load i32, i32* %23, align 4
  %103 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %104 = call i32 @hns_roce_mhop_alloc(%struct.hns_roce_dev* %101, i32 %102, %struct.hns_roce_mr* %103)
  store i32 %104, i32* %24, align 4
  %105 = load i32, i32* %24, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %189

108:                                              ; preds = %100
  br label %127

109:                                              ; preds = %90
  %110 = load %struct.device*, %struct.device** %22, align 8
  %111 = load i32, i32* %23, align 4
  %112 = mul nsw i32 %111, 8
  %113 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %114 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %113, i32 0, i32 2
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call i32 @dma_alloc_coherent(%struct.device* %110, i32 %112, i32* %114, i32 %115)
  %117 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %118 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  %119 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %120 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %109
  %124 = load i32, i32* @ENOMEM, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %24, align 4
  br label %189

126:                                              ; preds = %109
  br label %127

127:                                              ; preds = %126, %108
  %128 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %129 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %128, i32 0, i32 1
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32 (%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32, i32, i32, i32)*, i32 (%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32, i32, i32, i32, i32, i32)** %131, align 8
  %133 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %134 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %18, align 4
  %137 = load i32, i32* %16, align 4
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %14, align 4
  %140 = load %struct.hns_roce_cmd_mailbox*, %struct.hns_roce_cmd_mailbox** %17, align 8
  %141 = getelementptr inbounds %struct.hns_roce_cmd_mailbox, %struct.hns_roce_cmd_mailbox* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 %132(%struct.hns_roce_dev* %133, %struct.hns_roce_mr* %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %142)
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %24, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %127
  br label %189

147:                                              ; preds = %127
  %148 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %149 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %150 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %151 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = call i32 @hns_roce_ib_umem_write_mr(%struct.hns_roce_dev* %148, %struct.hns_roce_mr* %149, i32* %152)
  store i32 %153, i32* %24, align 4
  %154 = load i32, i32* %24, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %188

156:                                              ; preds = %147
  %157 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %158 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, -1
  br i1 %160, label %161, label %187

161:                                              ; preds = %156
  %162 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %163 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = call i32 @ib_umem_page_count(i32* %164)
  store i32 %165, i32* %23, align 4
  %166 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %167 = getelementptr inbounds %struct.hns_roce_dev, %struct.hns_roce_dev* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %175

171:                                              ; preds = %161
  %172 = load %struct.hns_roce_dev*, %struct.hns_roce_dev** %20, align 8
  %173 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %174 = call i32 @hns_roce_mhop_free(%struct.hns_roce_dev* %172, %struct.hns_roce_mr* %173)
  br label %186

175:                                              ; preds = %161
  %176 = load %struct.device*, %struct.device** %22, align 8
  %177 = load i32, i32* %23, align 4
  %178 = mul nsw i32 %177, 8
  %179 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %180 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %183 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @dma_free_coherent(%struct.device* %176, i32 %178, i32 %181, i32 %184)
  br label %186

186:                                              ; preds = %175, %171
  br label %187

187:                                              ; preds = %186, %156
  br label %189

188:                                              ; preds = %147
  store i32 0, i32* %10, align 4
  br label %195

189:                                              ; preds = %187, %146, %123, %107
  %190 = load %struct.hns_roce_mr*, %struct.hns_roce_mr** %21, align 8
  %191 = getelementptr inbounds %struct.hns_roce_mr, %struct.hns_roce_mr* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = call i32 @ib_umem_release(i32* %192)
  %194 = load i32, i32* %24, align 4
  store i32 %194, i32* %10, align 4
  br label %195

195:                                              ; preds = %189, %188, %81
  %196 = load i32, i32* %10, align 4
  ret i32 %196
}

declare dso_local %struct.hns_roce_dev* @to_hr_dev(i32) #1

declare dso_local %struct.hns_roce_mr* @to_hr_mr(%struct.ib_mr*) #1

declare dso_local i32 @ib_umem_page_count(i32*) #1

declare dso_local i32 @hns_roce_mhop_free(%struct.hns_roce_dev*, %struct.hns_roce_mr*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @ib_umem_release(i32*) #1

declare dso_local i32* @ib_umem_get(%struct.ib_udata*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @hns_roce_mhop_alloc(%struct.hns_roce_dev*, i32, %struct.hns_roce_mr*) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @hns_roce_ib_umem_write_mr(%struct.hns_roce_dev*, %struct.hns_roce_mr*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
