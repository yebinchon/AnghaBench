; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_iu_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_alloc_iu_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rdma_ch = type { %struct.TYPE_3__**, %struct.TYPE_3__**, i32, i32, i32, %struct.srp_target_port* }
%struct.TYPE_3__ = type { i32 }
%struct.srp_target_port = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srp_rdma_ch*)* @srp_alloc_iu_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srp_alloc_iu_bufs(%struct.srp_rdma_ch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.srp_rdma_ch*, align 8
  %4 = alloca %struct.srp_target_port*, align 8
  %5 = alloca i32, align 4
  store %struct.srp_rdma_ch* %0, %struct.srp_rdma_ch** %3, align 8
  %6 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %7 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %6, i32 0, i32 5
  %8 = load %struct.srp_target_port*, %struct.srp_target_port** %7, align 8
  store %struct.srp_target_port* %8, %struct.srp_target_port** %4, align 8
  %9 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %10 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kcalloc(i32 %11, i32 8, i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_3__**
  %15 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %16 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %15, i32 0, i32 0
  store %struct.TYPE_3__** %14, %struct.TYPE_3__*** %16, align 8
  %17 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %18 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %18, align 8
  %20 = icmp ne %struct.TYPE_3__** %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %156

22:                                               ; preds = %1
  %23 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %24 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kcalloc(i32 %25, i32 8, i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_3__**
  %29 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %30 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %29, i32 0, i32 1
  store %struct.TYPE_3__** %28, %struct.TYPE_3__*** %30, align 8
  %31 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %32 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %32, align 8
  %34 = icmp ne %struct.TYPE_3__** %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %22
  br label %156

36:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %70, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %40 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %37
  %44 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %45 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %48 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @GFP_KERNEL, align 4
  %51 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %52 = call i8* @srp_alloc_iu(i32 %46, i32 %49, i32 %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.TYPE_3__*
  %54 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %55 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %54, i32 0, i32 0
  %56 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %56, i64 %58
  store %struct.TYPE_3__* %53, %struct.TYPE_3__** %59, align 8
  %60 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %61 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %62, i64 %64
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %65, align 8
  %67 = icmp ne %struct.TYPE_3__* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %43
  br label %122

69:                                               ; preds = %43
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %37

73:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %118, %73
  %75 = load i32, i32* %5, align 4
  %76 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %77 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %121

80:                                               ; preds = %74
  %81 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %82 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %85 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = load i32, i32* @DMA_TO_DEVICE, align 4
  %89 = call i8* @srp_alloc_iu(i32 %83, i32 %86, i32 %87, i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_3__*
  %91 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %92 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %91, i32 0, i32 1
  %93 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %92, align 8
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %93, i64 %95
  store %struct.TYPE_3__* %90, %struct.TYPE_3__** %96, align 8
  %97 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %98 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %97, i32 0, i32 1
  %99 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %98, align 8
  %100 = load i32, i32* %5, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %99, i64 %101
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = icmp ne %struct.TYPE_3__* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %80
  br label %122

106:                                              ; preds = %80
  %107 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %108 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %109, i64 %111
  %113 = load %struct.TYPE_3__*, %struct.TYPE_3__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 0
  %115 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %116 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %115, i32 0, i32 2
  %117 = call i32 @list_add(i32* %114, i32* %116)
  br label %118

118:                                              ; preds = %106
  %119 = load i32, i32* %5, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %5, align 4
  br label %74

121:                                              ; preds = %74
  store i32 0, i32* %2, align 4
  br label %171

122:                                              ; preds = %105, %68
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %152, %122
  %124 = load i32, i32* %5, align 4
  %125 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %126 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %155

129:                                              ; preds = %123
  %130 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %131 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %134 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %133, i32 0, i32 0
  %135 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %135, i64 %137
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = call i32 @srp_free_iu(i32 %132, %struct.TYPE_3__* %139)
  %141 = load %struct.srp_target_port*, %struct.srp_target_port** %4, align 8
  %142 = getelementptr inbounds %struct.srp_target_port, %struct.srp_target_port* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %145 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %144, i32 0, i32 1
  %146 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %145, align 8
  %147 = load i32, i32* %5, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %146, i64 %148
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = call i32 @srp_free_iu(i32 %143, %struct.TYPE_3__* %150)
  br label %152

152:                                              ; preds = %129
  %153 = load i32, i32* %5, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %5, align 4
  br label %123

155:                                              ; preds = %123
  br label %156

156:                                              ; preds = %155, %35, %21
  %157 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %158 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %157, i32 0, i32 1
  %159 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %158, align 8
  %160 = call i32 @kfree(%struct.TYPE_3__** %159)
  %161 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %162 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %161, i32 0, i32 1
  store %struct.TYPE_3__** null, %struct.TYPE_3__*** %162, align 8
  %163 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %164 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %163, i32 0, i32 0
  %165 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %164, align 8
  %166 = call i32 @kfree(%struct.TYPE_3__** %165)
  %167 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %3, align 8
  %168 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %167, i32 0, i32 0
  store %struct.TYPE_3__** null, %struct.TYPE_3__*** %168, align 8
  %169 = load i32, i32* @ENOMEM, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %156, %121
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @srp_alloc_iu(i32, i32, i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @srp_free_iu(i32, %struct.TYPE_3__*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
