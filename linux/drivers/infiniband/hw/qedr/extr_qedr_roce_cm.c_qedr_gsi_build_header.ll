; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_build_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qedr/extr_qedr_roce_cm.c_qedr_gsi_build_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedr_dev = type { %struct.TYPE_24__* }
%struct.TYPE_24__ = type { i32 }
%struct.qedr_qp = type { i32 }
%struct.ib_send_wr = type { i32, i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64 }
%struct.ib_ud_header = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_30__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__ }
%struct.TYPE_19__ = type { i64, i8*, i8* }
%struct.TYPE_18__ = type { i8*, i8*, i32, i8*, i8*, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_29__, %struct.TYPE_17__, i32, i32 }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_28__ = type { i8*, i8* }
%struct.TYPE_27__ = type { i32, i32, i8*, i8*, i32 }
%struct.TYPE_26__ = type { i8*, i32, i32 }
%struct.TYPE_25__ = type { i8*, i8* }
%struct.rdma_ah_attr = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32 }
%struct.ib_global_route = type { i32, %struct.TYPE_17__, i32, i32, %struct.ib_gid_attr* }
%struct.ib_gid_attr = type { i64, %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_21__ = type { %struct.rdma_ah_attr }
%struct.in6_addr = type { i32 }

@VLAN_CFI_MASK = common dso_local global i64 0, align 8
@IB_GID_TYPE_ROCE_UDP_ENCAP = common dso_local global i64 0, align 8
@ETH_P_IBOE = common dso_local global i64 0, align 8
@ROCE_V1 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i64 0, align 8
@ROCE_V2_IPV4 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i64 0, align 8
@ROCE_V2_IPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"gsi post send: failed to init header\0A\00", align 1
@ETH_P_8021Q = common dso_local global i64 0, align 8
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@QEDR_ROCE_PKEY_DEFAULT = common dso_local global i32 0, align 4
@IB_OPCODE_UD_SEND_ONLY = common dso_local global i32 0, align 4
@QEDR_GSI_QPN = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@IP_DF = common dso_local global i64 0, align 8
@QEDR_ROCE_V2_UDP_SPORT = common dso_local global i64 0, align 8
@ROCE_V2_UDP_DPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qedr_dev*, %struct.qedr_qp*, %struct.ib_send_wr*, %struct.ib_ud_header*, i32*)* @qedr_gsi_build_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedr_gsi_build_header(%struct.qedr_dev* %0, %struct.qedr_qp* %1, %struct.ib_send_wr* %2, %struct.ib_ud_header* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qedr_dev*, align 8
  %8 = alloca %struct.qedr_qp*, align 8
  %9 = alloca %struct.ib_send_wr*, align 8
  %10 = alloca %struct.ib_ud_header*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rdma_ah_attr*, align 8
  %15 = alloca %struct.ib_global_route*, align 8
  %16 = alloca %struct.ib_gid_attr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  store %struct.qedr_dev* %0, %struct.qedr_dev** %7, align 8
  store %struct.qedr_qp* %1, %struct.qedr_qp** %8, align 8
  store %struct.ib_send_wr* %2, %struct.ib_send_wr** %9, align 8
  store %struct.ib_ud_header* %3, %struct.ib_ud_header** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %26 = call %struct.TYPE_20__* @ud_wr(%struct.ib_send_wr* %25)
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_21__* @get_qedr_ah(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 0
  store %struct.rdma_ah_attr* %30, %struct.rdma_ah_attr** %14, align 8
  %31 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %14, align 8
  %32 = call %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr* %31)
  store %struct.ib_global_route* %32, %struct.ib_global_route** %15, align 8
  %33 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %34 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %33, i32 0, i32 4
  %35 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %34, align 8
  store %struct.ib_gid_attr* %35, %struct.ib_gid_attr** %16, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %36 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %37 = call i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr* %36, i64* %18, i32* null)
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %20, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %5
  %41 = load i32, i32* %20, align 4
  store i32 %41, i32* %6, align 4
  br label %299

42:                                               ; preds = %5
  %43 = load i64, i64* %18, align 8
  %44 = load i64, i64* @VLAN_CFI_MASK, align 8
  %45 = icmp slt i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %46, %42
  store i32 0, i32* %17, align 4
  store i32 0, i32* %23, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %23, align 4
  %50 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %51 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %56 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %55, i32 0, i32 2
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %56, align 8
  %58 = load i32, i32* %23, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %64, %62
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %17, align 4
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %23, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %23, align 4
  br label %48

70:                                               ; preds = %48
  %71 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %72 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @IB_GID_TYPE_ROCE_UDP_ENCAP, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %22, align 4
  %77 = load i32, i32* %22, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %70
  %80 = load i64, i64* @ETH_P_IBOE, align 8
  store i64 %80, i64* %19, align 8
  %81 = load i32, i32* @ROCE_V1, align 4
  %82 = load i32*, i32** %11, align 8
  store i32 %81, i32* %82, align 4
  br label %98

83:                                               ; preds = %70
  %84 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %85 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %84, i32 0, i32 1
  %86 = bitcast %struct.TYPE_16__* %85 to %struct.in6_addr*
  %87 = call i64 @ipv6_addr_v4mapped(%struct.in6_addr* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  store i32 4, i32* %21, align 4
  %90 = load i64, i64* @ETH_P_IP, align 8
  store i64 %90, i64* %19, align 8
  store i32 0, i32* %13, align 4
  %91 = load i32, i32* @ROCE_V2_IPV4, align 4
  %92 = load i32*, i32** %11, align 8
  store i32 %91, i32* %92, align 4
  br label %97

93:                                               ; preds = %83
  store i32 6, i32* %21, align 4
  %94 = load i64, i64* @ETH_P_IPV6, align 8
  store i64 %94, i64* %19, align 8
  %95 = load i32, i32* @ROCE_V2_IPV6, align 4
  %96 = load i32*, i32** %11, align 8
  store i32 %95, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %79
  %99 = load i32, i32* %17, align 4
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %21, align 4
  %103 = load i32, i32* %22, align 4
  %104 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %105 = call i32 @ib_ud_header_init(i32 %99, i32 0, i32 1, i32 %100, i32 %101, i32 %102, i32 %103, i32 0, %struct.ib_ud_header* %104)
  store i32 %105, i32* %20, align 4
  %106 = load i32, i32* %20, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %98
  %109 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %110 = call i32 @DP_ERR(%struct.qedr_dev* %109, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %111 = load i32, i32* %20, align 4
  store i32 %111, i32* %6, align 4
  br label %299

112:                                              ; preds = %98
  %113 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %114 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %113, i32 0, i32 5
  %115 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.rdma_ah_attr*, %struct.rdma_ah_attr** %14, align 8
  %118 = getelementptr inbounds %struct.rdma_ah_attr, %struct.rdma_ah_attr* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @ether_addr_copy(i32 %116, i32 %120)
  %122 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %123 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %122, i32 0, i32 5
  %124 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.qedr_dev*, %struct.qedr_dev** %7, align 8
  %127 = getelementptr inbounds %struct.qedr_dev, %struct.qedr_dev* %126, i32 0, i32 0
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @ether_addr_copy(i32 %125, i32 %130)
  %132 = load i32, i32* %12, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %150

134:                                              ; preds = %112
  %135 = load i64, i64* @ETH_P_8021Q, align 8
  %136 = call i8* @htons(i64 %135)
  %137 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %138 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %138, i32 0, i32 0
  store i8* %136, i8** %139, align 8
  %140 = load i64, i64* %18, align 8
  %141 = call i8* @htons(i64 %140)
  %142 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %143 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %142, i32 0, i32 6
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 1
  store i8* %141, i8** %144, align 8
  %145 = load i64, i64* %19, align 8
  %146 = call i8* @htons(i64 %145)
  %147 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %148 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %148, i32 0, i32 0
  store i8* %146, i8** %149, align 8
  br label %156

150:                                              ; preds = %112
  %151 = load i64, i64* %19, align 8
  %152 = call i8* @htons(i64 %151)
  %153 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %154 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %154, i32 0, i32 0
  store i8* %152, i8** %155, align 8
  br label %156

156:                                              ; preds = %150, %134
  %157 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %158 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %167 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 0
  store i32 %165, i32* %168, align 8
  %169 = load i32, i32* @QEDR_ROCE_PKEY_DEFAULT, align 4
  %170 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %171 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %170, i32 0, i32 4
  %172 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %171, i32 0, i32 4
  store i32 %169, i32* %172, align 8
  %173 = load %struct.ib_send_wr*, %struct.ib_send_wr** %9, align 8
  %174 = call %struct.TYPE_20__* @ud_wr(%struct.ib_send_wr* %173)
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i8* @htonl(i32 %176)
  %178 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %179 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %178, i32 0, i32 4
  %180 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %179, i32 0, i32 3
  store i8* %177, i8** %180, align 8
  %181 = load %struct.qedr_qp*, %struct.qedr_qp** %8, align 8
  %182 = getelementptr inbounds %struct.qedr_qp, %struct.qedr_qp* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  %185 = and i32 %183, 16777215
  %186 = call i8* @htonl(i32 %185)
  %187 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %188 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %188, i32 0, i32 2
  store i8* %186, i8** %189, align 8
  %190 = load i32, i32* @IB_OPCODE_UD_SEND_ONLY, align 4
  %191 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %192 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %192, i32 0, i32 1
  store i32 %190, i32* %193, align 4
  %194 = call i8* @htonl(i32 -2147418112)
  %195 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %196 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %196, i32 0, i32 1
  store i8* %194, i8** %197, align 8
  %198 = load i32, i32* @QEDR_GSI_QPN, align 4
  %199 = call i8* @htonl(i32 %198)
  %200 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %201 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %200, i32 0, i32 3
  %202 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %201, i32 0, i32 0
  store i8* %199, i8** %202, align 8
  %203 = load i32, i32* %13, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %240

205:                                              ; preds = %156
  %206 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %207 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %210 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %210, i32 0, i32 4
  store i32 %208, i32* %211, align 8
  %212 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %213 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %216 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %216, i32 0, i32 0
  store i32 %214, i32* %217, align 8
  %218 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %219 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %222 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 3
  store i32 %220, i32* %223, align 4
  %224 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %225 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %225, i32 0, i32 2
  %227 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %228 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %227, i32 0, i32 1
  %229 = bitcast %struct.TYPE_17__* %226 to i8*
  %230 = bitcast %struct.TYPE_17__* %228 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %229, i8* align 4 %230, i64 4, i1 false)
  %231 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %232 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %231, i32 0, i32 2
  %233 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %232, i32 0, i32 1
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 0
  %235 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %236 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @memcpy(i32* %234, i32 %238, i32 4)
  br label %281

240:                                              ; preds = %156
  %241 = load i32, i32* @IPPROTO_UDP, align 4
  %242 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %243 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %243, i32 0, i32 5
  store i32 %241, i32* %244, align 8
  %245 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %246 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = call i8* @htonl(i32 %247)
  %249 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %250 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 4
  store i8* %248, i8** %251, align 8
  %252 = load i64, i64* @IP_DF, align 8
  %253 = call i8* @htons(i64 %252)
  %254 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %255 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 3
  store i8* %253, i8** %256, align 8
  %257 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %258 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %261 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %261, i32 0, i32 2
  store i32 %259, i32* %262, align 8
  %263 = load %struct.ib_gid_attr*, %struct.ib_gid_attr** %16, align 8
  %264 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %263, i32 0, i32 1
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = call i8* @qedr_get_ipv4_from_gid(i32 %266)
  store i8* %267, i8** %24, align 8
  %268 = load i8*, i8** %24, align 8
  %269 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %270 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 1
  store i8* %268, i8** %271, align 8
  %272 = load %struct.ib_global_route*, %struct.ib_global_route** %15, align 8
  %273 = getelementptr inbounds %struct.ib_global_route, %struct.ib_global_route* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 4
  %276 = call i8* @qedr_get_ipv4_from_gid(i32 %275)
  store i8* %276, i8** %24, align 8
  %277 = load i8*, i8** %24, align 8
  %278 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %279 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %279, i32 0, i32 0
  store i8* %277, i8** %280, align 8
  br label %281

281:                                              ; preds = %240, %205
  %282 = load i32, i32* %22, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %298

284:                                              ; preds = %281
  %285 = load i64, i64* @QEDR_ROCE_V2_UDP_SPORT, align 8
  %286 = call i8* @htons(i64 %285)
  %287 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %288 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 2
  store i8* %286, i8** %289, align 8
  %290 = load i64, i64* @ROCE_V2_UDP_DPORT, align 8
  %291 = call i8* @htons(i64 %290)
  %292 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %293 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 1
  store i8* %291, i8** %294, align 8
  %295 = load %struct.ib_ud_header*, %struct.ib_ud_header** %10, align 8
  %296 = getelementptr inbounds %struct.ib_ud_header, %struct.ib_ud_header* %295, i32 0, i32 0
  %297 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %296, i32 0, i32 0
  store i64 0, i64* %297, align 8
  br label %298

298:                                              ; preds = %284, %281
  store i32 0, i32* %6, align 4
  br label %299

299:                                              ; preds = %298, %108, %40
  %300 = load i32, i32* %6, align 4
  ret i32 %300
}

declare dso_local %struct.TYPE_21__* @get_qedr_ah(i32) #1

declare dso_local %struct.TYPE_20__* @ud_wr(%struct.ib_send_wr*) #1

declare dso_local %struct.ib_global_route* @rdma_ah_read_grh(%struct.rdma_ah_attr*) #1

declare dso_local i32 @rdma_read_gid_l2_fields(%struct.ib_gid_attr*, i64*, i32*) #1

declare dso_local i64 @ipv6_addr_v4mapped(%struct.in6_addr*) #1

declare dso_local i32 @ib_ud_header_init(i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_ud_header*) #1

declare dso_local i32 @DP_ERR(%struct.qedr_dev*, i8*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i8* @htonl(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @qedr_get_ipv4_from_gid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
