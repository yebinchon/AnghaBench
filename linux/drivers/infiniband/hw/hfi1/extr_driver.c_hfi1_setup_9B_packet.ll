; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_setup_9B_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_driver.c_hfi1_setup_9B_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_packet = type { i64, i32*, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.ib_header*, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.ib_header = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.hfi1_ibport = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@HFI1_LRH_BTH = common dso_local global i64 0, align 8
@HFI1_LRH_GRH = common dso_local global i64 0, align 8
@IB_GRH_NEXT_HDR = common dso_local global i64 0, align 8
@IB_GRH_VERSION_SHIFT = common dso_local global i32 0, align 4
@IB_GRH_VERSION = common dso_local global i32 0, align 4
@IB_MULTICAST_LID_BASE = common dso_local global i32 0, align 4
@IB_LID_PERMISSIVE = common dso_local global i32 0, align 4
@OPA_MCAST_NR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hfi1_packet*)* @hfi1_setup_9B_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfi1_setup_9B_packet(%struct.hfi1_packet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hfi1_packet*, align 8
  %4 = alloca %struct.hfi1_ibport*, align 8
  %5 = alloca %struct.ib_header*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.hfi1_packet* %0, %struct.hfi1_packet** %3, align 8
  %8 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %9 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %8, i32 0, i32 15
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.hfi1_ibport* @rcd_to_iport(i32 %10)
  store %struct.hfi1_ibport* %11, %struct.hfi1_ibport** %4, align 8
  %12 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %13 = call i32 @hfi1_setup_ib_header(%struct.hfi1_packet* %12)
  %14 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %15 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %14, i32 0, i32 14
  %16 = load %struct.ib_header*, %struct.ib_header** %15, align 8
  store %struct.ib_header* %16, %struct.ib_header** %5, align 8
  %17 = load %struct.ib_header*, %struct.ib_header** %5, align 8
  %18 = call i64 @ib_get_lnh(%struct.ib_header* %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @HFI1_LRH_BTH, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.ib_header*, %struct.ib_header** %5, align 8
  %24 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %27 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %29 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %28, i32 0, i32 13
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %29, align 8
  br label %71

30:                                               ; preds = %1
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* @HFI1_LRH_GRH, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load %struct.ib_header*, %struct.ib_header** %5, align 8
  %36 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %40 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %39, i32 0, i32 1
  store i32* %38, i32** %40, align 8
  %41 = load %struct.ib_header*, %struct.ib_header** %5, align 8
  %42 = getelementptr inbounds %struct.ib_header, %struct.ib_header* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %46 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %45, i32 0, i32 13
  store %struct.TYPE_7__* %44, %struct.TYPE_7__** %46, align 8
  %47 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %48 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %47, i32 0, i32 13
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @IB_GRH_NEXT_HDR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %34
  br label %151

55:                                               ; preds = %34
  %56 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %57 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %56, i32 0, i32 13
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @be32_to_cpu(i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @IB_GRH_VERSION_SHIFT, align 4
  %64 = ashr i32 %62, %63
  %65 = load i32, i32* @IB_GRH_VERSION, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  br label %151

68:                                               ; preds = %55
  br label %70

69:                                               ; preds = %30
  br label %151

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70, %22
  %72 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %73 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %72, i32 0, i32 11
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %76 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %75, i32 0, i32 12
  store i32 %74, i32* %76, align 4
  %77 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %78 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @ib_bth_get_opcode(i32* %79)
  %81 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %82 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ib_header*, %struct.ib_header** %5, align 8
  %84 = call i32 @ib_get_slid(%struct.ib_header* %83)
  %85 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %86 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %85, i32 0, i32 9
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ib_header*, %struct.ib_header** %5, align 8
  %88 = call i64 @ib_get_dlid(%struct.ib_header* %87)
  %89 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %90 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %89, i32 0, i32 0
  store i64 %88, i64* %90, align 8
  %91 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %92 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %95 = call i64 @be16_to_cpu(i32 %94)
  %96 = icmp sge i64 %93, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %71
  %98 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %99 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @IB_LID_PERMISSIVE, align 4
  %102 = call i64 @be16_to_cpu(i32 %101)
  %103 = icmp ne i64 %100, %102
  br label %104

104:                                              ; preds = %97, %71
  %105 = phi i1 [ false, %71 ], [ %103, %97 ]
  %106 = zext i1 %105 to i32
  %107 = call i64 @unlikely(i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %104
  %110 = load i32, i32* @OPA_MCAST_NR, align 4
  %111 = call i64 @opa_get_mcast_base(i32 %110)
  %112 = load i32, i32* @IB_MULTICAST_LID_BASE, align 4
  %113 = call i64 @be16_to_cpu(i32 %112)
  %114 = sub nsw i64 %111, %113
  %115 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %116 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %117, %114
  store i64 %118, i64* %116, align 8
  br label %119

119:                                              ; preds = %109, %104
  %120 = load %struct.ib_header*, %struct.ib_header** %5, align 8
  %121 = call i32 @ib_get_sl(%struct.ib_header* %120)
  %122 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %123 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 4
  %124 = load %struct.ib_header*, %struct.ib_header** %5, align 8
  %125 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %126 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @hfi1_9B_get_sc5(%struct.ib_header* %124, i32 %127)
  %129 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %130 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %129, i32 0, i32 7
  store i32 %128, i32* %130, align 8
  %131 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %132 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @ib_bth_get_pad(i32* %133)
  %135 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %136 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %135, i32 0, i32 5
  store i32 %134, i32* %136, align 8
  %137 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %138 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %137, i32 0, i32 4
  store i64 0, i64* %138, align 8
  %139 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %140 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = call i32 @ib_bth_get_pkey(i32* %141)
  %143 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %144 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %146 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %145, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @ib_bth_is_migration(i32* %147)
  %149 = load %struct.hfi1_packet*, %struct.hfi1_packet** %3, align 8
  %150 = getelementptr inbounds %struct.hfi1_packet, %struct.hfi1_packet* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  store i32 0, i32* %2, align 4
  br label %159

151:                                              ; preds = %69, %67, %54
  %152 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %4, align 8
  %153 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %151, %119
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.hfi1_ibport* @rcd_to_iport(i32) #1

declare dso_local i32 @hfi1_setup_ib_header(%struct.hfi1_packet*) #1

declare dso_local i64 @ib_get_lnh(%struct.ib_header*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ib_bth_get_opcode(i32*) #1

declare dso_local i32 @ib_get_slid(%struct.ib_header*) #1

declare dso_local i64 @ib_get_dlid(%struct.ib_header*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @opa_get_mcast_base(i32) #1

declare dso_local i32 @ib_get_sl(%struct.ib_header*) #1

declare dso_local i32 @hfi1_9B_get_sc5(%struct.ib_header*, i32) #1

declare dso_local i32 @ib_bth_get_pad(i32*) #1

declare dso_local i32 @ib_bth_get_pkey(i32*) #1

declare dso_local i32 @ib_bth_is_migration(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
