; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_create_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/hisilicon/extr_qm.c_hisi_qm_create_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_qp = type { i32, %struct.TYPE_4__, i32, i32, i32, %struct.hisi_qm* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.hisi_qm = type { i32, i32, i32, i32, %struct.hisi_qp**, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"QM all queues are busy!\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@QM_Q_DEPTH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"allocate qp dma buf(va=%pK, dma=%pad, size=%zx)\0A\00", align 1
@qm_qp_work_func = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"hisi_qm\00", align 1
@WQ_UNBOUND = common dso_local global i32 0, align 4
@WQ_HIGHPRI = common dso_local global i32 0, align 4
@WQ_CPU_INTENSIVE = common dso_local global i32 0, align 4
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hisi_qp* @hisi_qm_create_qp(%struct.hisi_qm* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_qp*, align 8
  %4 = alloca %struct.hisi_qm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.hisi_qp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hisi_qm* %0, %struct.hisi_qm** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %11 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %10, i32 0, i32 6
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.hisi_qp* @kzalloc(i32 40, i32 %14)
  store %struct.hisi_qp* %15, %struct.hisi_qp** %7, align 8
  %16 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %17 = icmp ne %struct.hisi_qp* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.hisi_qp* @ERR_PTR(i32 %20)
  store %struct.hisi_qp* %21, %struct.hisi_qp** %3, align 8
  br label %196

22:                                               ; preds = %2
  %23 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %24 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %23, i32 0, i32 2
  %25 = call i32 @write_lock(i32* %24)
  %26 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %27 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %30 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @find_first_zero_bit(i32 %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %35 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %33, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %22
  %39 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %40 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %39, i32 0, i32 2
  %41 = call i32 @write_unlock(i32* %40)
  %42 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %43 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %42, i32 0, i32 6
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @dev_info(%struct.device* %45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EBUSY, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %9, align 4
  br label %191

49:                                               ; preds = %22
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %52 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @set_bit(i32 %50, i32 %53)
  %55 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %56 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %57 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %56, i32 0, i32 4
  %58 = load %struct.hisi_qp**, %struct.hisi_qp*** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.hisi_qp*, %struct.hisi_qp** %58, i64 %60
  store %struct.hisi_qp* %55, %struct.hisi_qp** %61, align 8
  %62 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %63 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %62, i32 0, i32 2
  %64 = call i32 @write_unlock(i32* %63)
  %65 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %66 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %67 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %66, i32 0, i32 5
  store %struct.hisi_qm* %65, %struct.hisi_qm** %67, align 8
  %68 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %69 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %122

72:                                               ; preds = %49
  %73 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %74 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @QM_Q_DEPTH, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = load i32, i32* @QM_Q_DEPTH, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 4, %80
  %82 = add i64 %78, %81
  %83 = trunc i64 %82 to i32
  %84 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %85 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.device*, %struct.device** %6, align 8
  %88 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %89 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %93 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 1
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i32 @dma_alloc_coherent(%struct.device* %87, i32 %91, i32* %94, i32 %95)
  %97 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %98 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 4
  %100 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %101 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %72
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %173

108:                                              ; preds = %72
  %109 = load %struct.device*, %struct.device** %6, align 8
  %110 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %111 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %115 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %118 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_dbg(%struct.device* %109, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32* %116, i32 %120)
  br label %122

122:                                              ; preds = %108, %49
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %125 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %128 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 8
  %129 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %130 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %129, i32 0, i32 3
  %131 = load i32, i32* @qm_qp_work_func, align 4
  %132 = call i32 @INIT_WORK(i32* %130, i32 %131)
  %133 = load i32, i32* @WQ_UNBOUND, align 4
  %134 = load i32, i32* @WQ_HIGHPRI, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @WQ_CPU_INTENSIVE, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %139 = or i32 %137, %138
  %140 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 0)
  %141 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %142 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  %143 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %144 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %150, label %147

147:                                              ; preds = %122
  %148 = load i32, i32* @EFAULT, align 4
  %149 = sub nsw i32 0, %148
  store i32 %149, i32* %9, align 4
  br label %152

150:                                              ; preds = %122
  %151 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  store %struct.hisi_qp* %151, %struct.hisi_qp** %3, align 8
  br label %196

152:                                              ; preds = %147
  %153 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %154 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %153, i32 0, i32 5
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %172

157:                                              ; preds = %152
  %158 = load %struct.device*, %struct.device** %6, align 8
  %159 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %160 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %164 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %168 = getelementptr inbounds %struct.hisi_qp, %struct.hisi_qp* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @dma_free_coherent(%struct.device* %158, i32 %162, i32 %166, i32 %170)
  br label %172

172:                                              ; preds = %157, %152
  br label %173

173:                                              ; preds = %172, %105
  %174 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %175 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %174, i32 0, i32 2
  %176 = call i32 @write_lock(i32* %175)
  %177 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %178 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %177, i32 0, i32 4
  %179 = load %struct.hisi_qp**, %struct.hisi_qp*** %178, align 8
  %180 = load i32, i32* %8, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds %struct.hisi_qp*, %struct.hisi_qp** %179, i64 %181
  store %struct.hisi_qp* null, %struct.hisi_qp** %182, align 8
  %183 = load i32, i32* %8, align 4
  %184 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %185 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @clear_bit(i32 %183, i32 %186)
  %188 = load %struct.hisi_qm*, %struct.hisi_qm** %4, align 8
  %189 = getelementptr inbounds %struct.hisi_qm, %struct.hisi_qm* %188, i32 0, i32 2
  %190 = call i32 @write_unlock(i32* %189)
  br label %191

191:                                              ; preds = %173, %38
  %192 = load %struct.hisi_qp*, %struct.hisi_qp** %7, align 8
  %193 = call i32 @kfree(%struct.hisi_qp* %192)
  %194 = load i32, i32* %9, align 4
  %195 = call %struct.hisi_qp* @ERR_PTR(i32 %194)
  store %struct.hisi_qp* %195, %struct.hisi_qp** %3, align 8
  br label %196

196:                                              ; preds = %191, %150, %18
  %197 = load %struct.hisi_qp*, %struct.hisi_qp** %3, align 8
  ret %struct.hisi_qp* %197
}

declare dso_local %struct.hisi_qp* @kzalloc(i32, i32) #1

declare dso_local %struct.hisi_qp* @ERR_PTR(i32) #1

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @write_unlock(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @kfree(%struct.hisi_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
