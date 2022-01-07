; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_main.c_qedr_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, i64)* }
%struct.qedr_cnq = type { i32, i32, %struct.TYPE_6__*, i32, i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.regpair = type { i32, i32 }
%struct.qedr_cq = type { i64, i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32, i32 (%struct.TYPE_4__*, i32)* }

@IGU_INT_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [84 x i8] c"Received NULL CQ cq_handle->hi=%d cq_handle->lo=%d sw_comp_cons=%d hw_comp_cons=%d\0A\00", align 1
@QEDR_CQ_MAGIC_NUMBER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [68 x i8] c"Problem with cq signature, cq_handle->hi=%d ch_handle->lo=%d cq=%p\0A\00", align 1
@qed_ops = common dso_local global %struct.TYPE_5__* null, align 8
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qedr_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qedr_cnq*, align 8
  %8 = alloca %struct.regpair*, align 8
  %9 = alloca %struct.qedr_cq*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.qedr_cnq*
  store %struct.qedr_cnq* %11, %struct.qedr_cnq** %7, align 8
  %12 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %13 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @IGU_INT_DISABLE, align 4
  %16 = call i32 @qed_sb_ack(i32 %14, i32 %15, i32 0)
  %17 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %18 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @qed_sb_update_sb_idx(i32 %19)
  %21 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %22 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %21, i32 0, i32 5
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @le16_to_cpu(i32 %24)
  store i64 %25, i64* %5, align 8
  %26 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %27 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %26, i32 0, i32 4
  %28 = call i64 @qed_chain_get_cons_idx(i32* %27)
  store i64 %28, i64* %6, align 8
  %29 = call i32 (...) @rmb()
  br label %30

30:                                               ; preds = %106, %2
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %118

34:                                               ; preds = %30
  %35 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %36 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %35, i32 0, i32 4
  %37 = call i64 @qed_chain_consume(i32* %36)
  %38 = inttoptr i64 %37 to %struct.regpair*
  store %struct.regpair* %38, %struct.regpair** %8, align 8
  %39 = load %struct.regpair*, %struct.regpair** %8, align 8
  %40 = getelementptr inbounds %struct.regpair, %struct.regpair* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.regpair*, %struct.regpair** %8, align 8
  %43 = getelementptr inbounds %struct.regpair, %struct.regpair* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @HILO_U64(i32 %41, i32 %44)
  %46 = inttoptr i64 %45 to %struct.qedr_cq*
  store %struct.qedr_cq* %46, %struct.qedr_cq** %9, align 8
  %47 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %48 = icmp eq %struct.qedr_cq* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %34
  %50 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %51 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load %struct.regpair*, %struct.regpair** %8, align 8
  %54 = getelementptr inbounds %struct.regpair, %struct.regpair* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.regpair*, %struct.regpair** %8, align 8
  %57 = getelementptr inbounds %struct.regpair, %struct.regpair* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %6, align 8
  %60 = inttoptr i64 %59 to %struct.qedr_cq*
  %61 = load i64, i64* %5, align 8
  %62 = call i32 (%struct.TYPE_6__*, i8*, i32, i32, %struct.qedr_cq*, ...) @DP_ERR(%struct.TYPE_6__* %52, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %55, i32 %58, %struct.qedr_cq* %60, i64 %61)
  br label %118

63:                                               ; preds = %34
  %64 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %65 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @QEDR_CQ_MAGIC_NUMBER, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %71 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %70, i32 0, i32 2
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load %struct.regpair*, %struct.regpair** %8, align 8
  %74 = getelementptr inbounds %struct.regpair, %struct.regpair* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.regpair*, %struct.regpair** %8, align 8
  %77 = getelementptr inbounds %struct.regpair, %struct.regpair* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %80 = call i32 (%struct.TYPE_6__*, i8*, i32, i32, %struct.qedr_cq*, ...) @DP_ERR(%struct.TYPE_6__* %72, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78, %struct.qedr_cq* %79)
  br label %118

81:                                               ; preds = %63
  %82 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %83 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %82, i32 0, i32 4
  store i64 0, i64* %83, align 8
  %84 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %85 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %81
  %89 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %90 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %91, align 8
  %93 = icmp ne i32 (%struct.TYPE_4__*, i32)* %92, null
  br i1 %93, label %94, label %106

94:                                               ; preds = %88
  %95 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %96 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32 (%struct.TYPE_4__*, i32)*, i32 (%struct.TYPE_4__*, i32)** %97, align 8
  %99 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %100 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %99, i32 0, i32 2
  %101 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %102 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %98(%struct.TYPE_4__* %100, i32 %104)
  br label %106

106:                                              ; preds = %94, %88, %81
  %107 = load %struct.qedr_cq*, %struct.qedr_cq** %9, align 8
  %108 = getelementptr inbounds %struct.qedr_cq, %struct.qedr_cq* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  %111 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %112 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %111, i32 0, i32 4
  %113 = call i64 @qed_chain_get_cons_idx(i32* %112)
  store i64 %113, i64* %6, align 8
  %114 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %115 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 8
  br label %30

118:                                              ; preds = %69, %49, %30
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** @qed_ops, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32 (i32, i32, i64)*, i32 (i32, i32, i64)** %120, align 8
  %122 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %123 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %122, i32 0, i32 2
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %128 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i64, i64* %6, align 8
  %131 = call i32 %121(i32 %126, i32 %129, i64 %130)
  %132 = load %struct.qedr_cnq*, %struct.qedr_cnq** %7, align 8
  %133 = getelementptr inbounds %struct.qedr_cnq, %struct.qedr_cnq* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @IGU_INT_ENABLE, align 4
  %136 = call i32 @qed_sb_ack(i32 %134, i32 %135, i32 1)
  %137 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %137
}

declare dso_local i32 @qed_sb_ack(i32, i32, i32) #1

declare dso_local i32 @qed_sb_update_sb_idx(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @qed_chain_get_cons_idx(i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i64 @qed_chain_consume(i32*) #1

declare dso_local i64 @HILO_U64(i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.TYPE_6__*, i8*, i32, i32, %struct.qedr_cq*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
