; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_build_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_build_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.qedr_qp = type { i32 }
%struct.ib_send_wr = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.qed_roce_ll2_packet = type { i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ib_ud_header = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@QEDR_MAX_UD_HEADER_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QED_LL2_TX_DEST_LB = common dso_local global i32 0, align 4
@QED_LL2_TX_DEST_NW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.ib_send_wr*, %struct.qed_roce_ll2_packet**)* @qedr_gsi_build_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_gsi_build_packet(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.ib_send_wr* %2, %struct.qed_roce_ll2_packet** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qedr_dev*, align 8
  %7 = alloca %struct.qedr_qp*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca %struct.qed_roce_ll2_packet**, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.qed_roce_ll2_packet*, align 8
  %13 = alloca %struct.pci_dev*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ib_ud_header, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.qedr_dev* %0, %struct.qedr_dev** %6, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %7, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %8, align 8
  store %struct.qed_roce_ll2_packet** %3, %struct.qed_roce_ll2_packet*** %9, align 8
  %20 = load i32, i32* @QEDR_MAX_UD_HEADER_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %10, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %11, align 8
  %24 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %25 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %24, i32 0, i32 0
  %26 = load %struct.pci_dev*, %struct.pci_dev** %25, align 8
  store %struct.pci_dev* %26, %struct.pci_dev** %13, align 8
  %27 = load %struct.qed_roce_ll2_packet**, %struct.qed_roce_ll2_packet*** %9, align 8
  store %struct.qed_roce_ll2_packet* null, %struct.qed_roce_ll2_packet** %27, align 8
  %28 = load %struct.qedr_dev*, %struct.qedr_dev** %6, align 8
  %29 = load %struct.qedr_qp*, %struct.qedr_qp** %7, align 8
  %30 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %31 = call i32 @qedr_gsi_build_header(%struct.qedr_dev* %28, %struct.qedr_qp* %29, %struct.ib_send_wr* %30, %struct.ib_ud_header* %16, i32* %14)
  store i32 %31, i32* %18, align 4
  %32 = load i32, i32* %18, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %4
  %35 = load i32, i32* %18, align 4
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %147

36:                                               ; preds = %4
  %37 = bitcast i32* %23 to i32**
  %38 = call i32 @ib_ud_header_pack(%struct.ib_ud_header* %16, i32** %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* @GFP_ATOMIC, align 4
  %40 = call %struct.qed_roce_ll2_packet* @kzalloc(i32 32, i32 %39)
  store %struct.qed_roce_ll2_packet* %40, %struct.qed_roce_ll2_packet** %12, align 8
  %41 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %42 = icmp ne %struct.qed_roce_ll2_packet* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %147

46:                                               ; preds = %36
  %47 = load %struct.pci_dev*, %struct.pci_dev** %13, align 8
  %48 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %15, align 4
  %50 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %51 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load i32, i32* @GFP_ATOMIC, align 4
  %54 = call i32 @dma_alloc_coherent(i32* %48, i32 %49, i32* %52, i32 %53)
  %55 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %56 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %59 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %68, label %63

63:                                               ; preds = %46
  %64 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %65 = call i32 @kfree(%struct.qed_roce_ll2_packet* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %147

68:                                               ; preds = %46
  %69 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %16, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %16, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ether_addr_equal(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  %78 = load i32, i32* @QED_LL2_TX_DEST_LB, align 4
  %79 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %80 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 4
  br label %85

81:                                               ; preds = %68
  %82 = load i32, i32* @QED_LL2_TX_DEST_NW, align 4
  %83 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %84 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %83, i32 0, i32 4
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %81, %77
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %88 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %90 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %15, align 4
  %94 = call i32 @memcpy(i32 %92, i32* %23, i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %97 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  %99 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %100 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %103 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  store i32 0, i32* %17, align 4
  br label %104

104:                                              ; preds = %141, %85
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %107 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %144

110:                                              ; preds = %104
  %111 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %112 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %111, i32 0, i32 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %120 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %119, i32 0, i32 2
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  store i32 %118, i32* %125, align 4
  %126 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %127 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %126, i32 0, i32 1
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = load i32, i32* %17, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %135 = getelementptr inbounds %struct.qed_roce_ll2_packet, %struct.qed_roce_ll2_packet* %134, i32 0, i32 2
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i32 %133, i32* %140, align 4
  br label %141

141:                                              ; preds = %110
  %142 = load i32, i32* %17, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %17, align 4
  br label %104

144:                                              ; preds = %104
  %145 = load %struct.qed_roce_ll2_packet*, %struct.qed_roce_ll2_packet** %12, align 8
  %146 = load %struct.qed_roce_ll2_packet**, %struct.qed_roce_ll2_packet*** %9, align 8
  store %struct.qed_roce_ll2_packet* %145, %struct.qed_roce_ll2_packet** %146, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %19, align 4
  br label %147

147:                                              ; preds = %144, %63, %43, %34
  %148 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @qedr_gsi_build_header(%struct.qedr_dev*, %struct.qedr_qp*, %struct.ib_send_wr*, %struct.ib_ud_header*, i32*) #2

declare dso_local i32 @ib_ud_header_pack(%struct.ib_ud_header*, i32**) #2

declare dso_local %struct.qed_roce_ll2_packet* @kzalloc(i32, i32) #2

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #2

declare dso_local i32 @kfree(%struct.qed_roce_ll2_packet*) #2

declare dso_local i64 @ether_addr_equal(i32, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
