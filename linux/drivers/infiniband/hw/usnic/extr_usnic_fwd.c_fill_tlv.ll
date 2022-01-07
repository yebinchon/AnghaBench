; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.c_fill_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/usnic/extr_usnic_fwd.c_fill_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filter_tlv = type { i32, i32, i32 }
%struct.filter = type { i32 }
%struct.filter_action = type { i32 }

@CLSF_TLV_FILTER = common dso_local global i32 0, align 4
@CLSF_TLV_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.filter_tlv*, %struct.filter*, %struct.filter_action*)* @fill_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_tlv(%struct.filter_tlv* %0, %struct.filter* %1, %struct.filter_action* %2) #0 {
  %4 = alloca %struct.filter_tlv*, align 8
  %5 = alloca %struct.filter*, align 8
  %6 = alloca %struct.filter_action*, align 8
  store %struct.filter_tlv* %0, %struct.filter_tlv** %4, align 8
  store %struct.filter* %1, %struct.filter** %5, align 8
  store %struct.filter_action* %2, %struct.filter_action** %6, align 8
  %7 = load i32, i32* @CLSF_TLV_FILTER, align 4
  %8 = load %struct.filter_tlv*, %struct.filter_tlv** %4, align 8
  %9 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load %struct.filter_tlv*, %struct.filter_tlv** %4, align 8
  %11 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %10, i32 0, i32 0
  store i32 4, i32* %11, align 4
  %12 = load %struct.filter_tlv*, %struct.filter_tlv** %4, align 8
  %13 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %12, i32 0, i32 1
  %14 = bitcast i32* %13 to %struct.filter*
  %15 = load %struct.filter*, %struct.filter** %5, align 8
  %16 = bitcast %struct.filter* %14 to i8*
  %17 = bitcast %struct.filter* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.filter_tlv*, %struct.filter_tlv** %4, align 8
  %19 = bitcast %struct.filter_tlv* %18 to i8*
  %20 = getelementptr inbounds i8, i8* %19, i64 12
  %21 = getelementptr inbounds i8, i8* %20, i64 4
  %22 = bitcast i8* %21 to %struct.filter_tlv*
  store %struct.filter_tlv* %22, %struct.filter_tlv** %4, align 8
  %23 = load i32, i32* @CLSF_TLV_ACTION, align 4
  %24 = load %struct.filter_tlv*, %struct.filter_tlv** %4, align 8
  %25 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.filter_tlv*, %struct.filter_tlv** %4, align 8
  %27 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %26, i32 0, i32 0
  store i32 4, i32* %27, align 4
  %28 = load %struct.filter_tlv*, %struct.filter_tlv** %4, align 8
  %29 = getelementptr inbounds %struct.filter_tlv, %struct.filter_tlv* %28, i32 0, i32 1
  %30 = bitcast i32* %29 to %struct.filter_action*
  %31 = load %struct.filter_action*, %struct.filter_action** %6, align 8
  %32 = bitcast %struct.filter_action* %30 to i8*
  %33 = bitcast %struct.filter_action* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 4, i1 false)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
