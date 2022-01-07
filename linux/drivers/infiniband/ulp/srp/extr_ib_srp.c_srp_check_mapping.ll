; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_check_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/ulp/srp/extr_ib_srp.c_srp_check_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_map_state = type { i32, i32 }
%struct.srp_rdma_ch = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.srp_device* }
%struct.srp_device = type { i64, i64 }
%struct.srp_request = type { i32, %struct.TYPE_8__*, %struct.srp_fr_desc** }
%struct.TYPE_8__ = type { i32 }
%struct.srp_fr_desc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [82 x i8] c"Inconsistent: scsi len %d <> desc len %lld <> mr len %lld; ndesc %d; nmdesc = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.srp_map_state*, %struct.srp_rdma_ch*, %struct.srp_request*, %struct.scatterlist*, i32)* @srp_check_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srp_check_mapping(%struct.srp_map_state* %0, %struct.srp_rdma_ch* %1, %struct.srp_request* %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca %struct.srp_map_state*, align 8
  %7 = alloca %struct.srp_rdma_ch*, align 8
  %8 = alloca %struct.srp_request*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.srp_device*, align 8
  %12 = alloca %struct.srp_fr_desc**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.srp_map_state* %0, %struct.srp_map_state** %6, align 8
  store %struct.srp_rdma_ch* %1, %struct.srp_rdma_ch** %7, align 8
  store %struct.srp_request* %2, %struct.srp_request** %8, align 8
  store %struct.scatterlist* %3, %struct.scatterlist** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.srp_rdma_ch*, %struct.srp_rdma_ch** %7, align 8
  %17 = getelementptr inbounds %struct.srp_rdma_ch, %struct.srp_rdma_ch* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.srp_device*, %struct.srp_device** %21, align 8
  store %struct.srp_device* %22, %struct.srp_device** %11, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %41, %5
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.srp_map_state*, %struct.srp_map_state** %6, align 8
  %26 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %23
  %30 = load %struct.srp_request*, %struct.srp_request** %8, align 8
  %31 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = load i32, i32* %15, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @be32_to_cpu(i32 %37)
  %39 = load i64, i64* %13, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %13, align 8
  br label %41

41:                                               ; preds = %29
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %15, align 4
  br label %23

44:                                               ; preds = %23
  %45 = load %struct.srp_device*, %struct.srp_device** %11, align 8
  %46 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %44
  store i32 0, i32* %15, align 4
  %50 = load %struct.srp_request*, %struct.srp_request** %8, align 8
  %51 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %50, i32 0, i32 2
  %52 = load %struct.srp_fr_desc**, %struct.srp_fr_desc*** %51, align 8
  store %struct.srp_fr_desc** %52, %struct.srp_fr_desc*** %12, align 8
  br label %53

53:                                               ; preds = %68, %49
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.srp_map_state*, %struct.srp_map_state** %6, align 8
  %56 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %53
  %60 = load %struct.srp_fr_desc**, %struct.srp_fr_desc*** %12, align 8
  %61 = load %struct.srp_fr_desc*, %struct.srp_fr_desc** %60, align 8
  %62 = getelementptr inbounds %struct.srp_fr_desc, %struct.srp_fr_desc* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %14, align 8
  %67 = add nsw i64 %66, %65
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %15, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %15, align 4
  %71 = load %struct.srp_fr_desc**, %struct.srp_fr_desc*** %12, align 8
  %72 = getelementptr inbounds %struct.srp_fr_desc*, %struct.srp_fr_desc** %71, i32 1
  store %struct.srp_fr_desc** %72, %struct.srp_fr_desc*** %12, align 8
  br label %53

73:                                               ; preds = %53
  br label %103

74:                                               ; preds = %44
  %75 = load %struct.srp_device*, %struct.srp_device** %11, align 8
  %76 = getelementptr inbounds %struct.srp_device, %struct.srp_device* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %102

79:                                               ; preds = %74
  store i32 0, i32* %15, align 4
  br label %80

80:                                               ; preds = %98, %79
  %81 = load i32, i32* %15, align 4
  %82 = load %struct.srp_map_state*, %struct.srp_map_state** %6, align 8
  %83 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load %struct.srp_request*, %struct.srp_request** %8, align 8
  %88 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i64 @be32_to_cpu(i32 %94)
  %96 = load i64, i64* %14, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %14, align 8
  br label %98

98:                                               ; preds = %86
  %99 = load i32, i32* %15, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %15, align 4
  br label %80

101:                                              ; preds = %80
  br label %102

102:                                              ; preds = %101, %74
  br label %103

103:                                              ; preds = %102, %73
  %104 = load i64, i64* %13, align 8
  %105 = load %struct.srp_request*, %struct.srp_request** %8, align 8
  %106 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @scsi_bufflen(i32 %107)
  %109 = icmp ne i64 %104, %108
  br i1 %109, label %117, label %110

110:                                              ; preds = %103
  %111 = load i64, i64* %14, align 8
  %112 = load %struct.srp_request*, %struct.srp_request** %8, align 8
  %113 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i64 @scsi_bufflen(i32 %114)
  %116 = icmp sgt i64 %111, %115
  br i1 %116, label %117, label %131

117:                                              ; preds = %110, %103
  %118 = load %struct.srp_request*, %struct.srp_request** %8, align 8
  %119 = getelementptr inbounds %struct.srp_request, %struct.srp_request* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i64 @scsi_bufflen(i32 %120)
  %122 = load i64, i64* %13, align 8
  %123 = load i64, i64* %14, align 8
  %124 = load %struct.srp_map_state*, %struct.srp_map_state** %6, align 8
  %125 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.srp_map_state*, %struct.srp_map_state** %6, align 8
  %128 = getelementptr inbounds %struct.srp_map_state, %struct.srp_map_state* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @pr_err(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i64 %121, i64 %122, i64 %123, i32 %126, i32 %129)
  br label %131

131:                                              ; preds = %117, %110
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i64 @scsi_bufflen(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
