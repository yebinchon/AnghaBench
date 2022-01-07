; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/iser/extr_iser_verbs.c_iser_post_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_conn = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.iser_tx_desc = type { %struct.TYPE_4__, %struct.ib_send_wr, i32, i32, i32, i32, %struct.ib_send_wr }
%struct.TYPE_4__ = type { %struct.ib_send_wr }
%struct.ib_send_wr = type { i32, i32*, i32, i32, i32, i32* }

@ISER_HEADERS_LEN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@IB_WR_SEND = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ib_post_send failed, ret:%d opcode:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iser_post_send(%struct.ib_conn* %0, %struct.iser_tx_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_conn*, align 8
  %5 = alloca %struct.iser_tx_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_conn* %0, %struct.ib_conn** %4, align 8
  store %struct.iser_tx_desc* %1, %struct.iser_tx_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %11 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %10, i32 0, i32 6
  store %struct.ib_send_wr* %11, %struct.ib_send_wr** %7, align 8
  %12 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %13 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %18 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %17, i32 0, i32 5
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ISER_HEADERS_LEN, align 4
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  %22 = call i32 @ib_dma_sync_single_for_device(i32 %16, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %24 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %26 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %25, i32 0, i32 4
  %27 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %28 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %27, i32 0, i32 5
  store i32* %26, i32** %28, align 8
  %29 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %30 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %33 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %32, i32 0, i32 4
  store i32 %31, i32* %33, align 8
  %34 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %35 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %38 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @IB_WR_SEND, align 4
  %40 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %41 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %3
  %45 = load i32, i32* @IB_SEND_SIGNALED, align 4
  br label %47

46:                                               ; preds = %3
  br label %47

47:                                               ; preds = %46, %44
  %48 = phi i32 [ %45, %44 ], [ 0, %46 ]
  %49 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %50 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %52 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %58 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %57, i32 0, i32 1
  store %struct.ib_send_wr* %58, %struct.ib_send_wr** %8, align 8
  br label %73

59:                                               ; preds = %47
  %60 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %61 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.iser_tx_desc*, %struct.iser_tx_desc** %5, align 8
  %68 = getelementptr inbounds %struct.iser_tx_desc, %struct.iser_tx_desc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store %struct.ib_send_wr* %69, %struct.ib_send_wr** %8, align 8
  br label %72

70:                                               ; preds = %59
  %71 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  store %struct.ib_send_wr* %71, %struct.ib_send_wr** %8, align 8
  br label %72

72:                                               ; preds = %70, %66
  br label %73

73:                                               ; preds = %72, %56
  %74 = load %struct.ib_conn*, %struct.ib_conn** %4, align 8
  %75 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %78 = call i32 @ib_post_send(i32 %76, %struct.ib_send_wr* %77, i32* null)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load i32, i32* %9, align 4
  %83 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %84 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @iser_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %81, %73
  %88 = load i32, i32* %9, align 4
  ret i32 %88
}

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #1

declare dso_local i32 @iser_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
