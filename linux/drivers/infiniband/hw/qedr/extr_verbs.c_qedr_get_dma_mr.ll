; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_get_dma_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_verbs.c_qedr_get_dma_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i32 }
%struct.ib_pd = type { i32 }
%struct.qedr_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32, i32*)*, i32 (i32, %struct.TYPE_4__*)*, i32 (i32, i32)* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qedr_pd = type { i32 }
%struct.qedr_mr = type { %struct.TYPE_4__, %struct.ib_mr, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QEDR_MR_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"roce alloc tid returned an error %d\0A\00", align 1
@QED_RDMA_TID_REGISTERED_MR = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"roce register tid returned an error %d\0A\00", align 1
@QEDR_MSG_MR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"get dma mr: lkey = %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @qedr_get_dma_mr(%struct.ib_pd* %0, i32 %1) #0 {
  %3 = alloca %struct.ib_mr*, align 8
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.qedr_pd*, align 8
  %8 = alloca %struct.qedr_mr*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %11 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.qedr_dev* @get_qedr_dev(i32 %12)
  store %struct.qedr_dev* %13, %struct.qedr_dev** %6, align 8
  %14 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %15 = call %struct.qedr_pd* @get_qedr_pd(%struct.ib_pd* %14)
  store %struct.qedr_pd* %15, %struct.qedr_pd** %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.qedr_mr* @kzalloc(i32 52, i32 %16)
  store %struct.qedr_mr* %17, %struct.qedr_mr** %8, align 8
  %18 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %19 = icmp ne %struct.qedr_mr* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.ib_mr* @ERR_PTR(i32 %22)
  store %struct.ib_mr* %23, %struct.ib_mr** %3, align 8
  br label %190

24:                                               ; preds = %2
  %25 = load i32, i32* @QEDR_MR_DMA, align 4
  %26 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %27 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 4
  %28 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %29 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (i32, i32*)*, i32 (i32, i32*)** %31, align 8
  %33 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %34 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %37 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = call i32 %32(i32 %35, i32* %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %24
  %43 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @DP_ERR(%struct.qedr_dev* %43, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %185

46:                                               ; preds = %24
  %47 = load i32, i32* @QED_RDMA_TID_REGISTERED_MR, align 4
  %48 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %49 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 9
  store i32 %47, i32* %50, align 4
  %51 = load %struct.qedr_pd*, %struct.qedr_pd** %7, align 8
  %52 = getelementptr inbounds %struct.qedr_pd, %struct.qedr_pd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %55 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 8
  store i32 %53, i32* %56, align 4
  %57 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %58 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i32 1, i32 0
  %66 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %67 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i32 1, i32 0
  %75 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %76 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i32 1, i32 0
  %84 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %85 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @IB_ACCESS_REMOTE_ATOMIC, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %94 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 5
  store i32 %92, i32* %95, align 4
  %96 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %97 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 6
  store i32 1, i32* %98, align 4
  %99 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %100 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %99, i32 0, i32 1
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32 (i32, %struct.TYPE_4__*)*, i32 (i32, %struct.TYPE_4__*)** %102, align 8
  %104 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %105 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %108 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %107, i32 0, i32 0
  %109 = call i32 %103(i32 %106, %struct.TYPE_4__* %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %46
  %113 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @DP_ERR(%struct.qedr_dev* %113, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %171

116:                                              ; preds = %46
  %117 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %118 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 8
  %122 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %123 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %121, %125
  %127 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %128 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %128, i32 0, i32 0
  store i32 %126, i32* %129, align 4
  %130 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %131 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %147, label %135

135:                                              ; preds = %116
  %136 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %137 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %143 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %141, %135, %116
  %148 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %149 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = shl i32 %151, 8
  %153 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %154 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 7
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %152, %156
  %158 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %159 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %159, i32 0, i32 1
  store i32 %157, i32* %160, align 4
  br label %161

161:                                              ; preds = %147, %141
  %162 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %163 = load i32, i32* @QEDR_MSG_MR, align 4
  %164 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %165 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @DP_DEBUG(%struct.qedr_dev* %162, i32 %163, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %167)
  %169 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %170 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %169, i32 0, i32 1
  store %struct.ib_mr* %170, %struct.ib_mr** %3, align 8
  br label %190

171:                                              ; preds = %112
  %172 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %173 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %172, i32 0, i32 1
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 2
  %176 = load i32 (i32, i32)*, i32 (i32, i32)** %175, align 8
  %177 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %178 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %181 = getelementptr inbounds %struct.qedr_mr, %struct.qedr_mr* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i32 %176(i32 %179, i32 %183)
  br label %185

185:                                              ; preds = %171, %42
  %186 = load %struct.qedr_mr*, %struct.qedr_mr** %8, align 8
  %187 = call i32 @kfree(%struct.qedr_mr* %186)
  %188 = load i32, i32* %9, align 4
  %189 = call %struct.ib_mr* @ERR_PTR(i32 %188)
  store %struct.ib_mr* %189, %struct.ib_mr** %3, align 8
  br label %190

190:                                              ; preds = %185, %161, %20
  %191 = load %struct.ib_mr*, %struct.ib_mr** %3, align 8
  ret %struct.ib_mr* %191
}

declare dso_local %struct.qedr_dev* @get_qedr_dev(i32) #1

declare dso_local %struct.qedr_pd* @get_qedr_pd(%struct.ib_pd*) #1

declare dso_local %struct.qedr_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*, i32) #1

declare dso_local i32 @DP_DEBUG(%struct.qedr_dev*, i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.qedr_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
