; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_bad_mkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_bad_mkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { i32 }
%struct.ib_mad_hdr = type { i64, i32, i32, i32 }
%struct.trap_node = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@IB_NOTICE_TYPE_SECURITY = common dso_local global i32 0, align 4
@OPA_TRAP_BAD_M_KEY = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_NOTICE_TRAP_DR_NOTICE = common dso_local global i32 0, align 4
@IB_NOTICE_TRAP_DR_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hfi1_ibport*, %struct.ib_mad_hdr*, i32, i32, i32*, i32)* @bad_mkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bad_mkey(%struct.hfi1_ibport* %0, %struct.ib_mad_hdr* %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.hfi1_ibport*, align 8
  %8 = alloca %struct.ib_mad_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.trap_node*, align 8
  %14 = alloca i32, align 4
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %7, align 8
  store %struct.ib_mad_hdr* %1, %struct.ib_mad_hdr** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %15 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %7, align 8
  %16 = call %struct.TYPE_6__* @ppd_from_ibp(%struct.hfi1_ibport* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* @IB_NOTICE_TYPE_SECURITY, align 4
  %20 = load i32, i32* @OPA_TRAP_BAD_M_KEY, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call %struct.trap_node* @create_trap_node(i32 %19, i32 %20, i32 %21)
  store %struct.trap_node* %22, %struct.trap_node** %13, align 8
  %23 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %24 = icmp ne %struct.trap_node* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %6
  br label %121

26:                                               ; preds = %6
  %27 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %28 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %32 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 7
  store i32 %30, i32* %34, align 4
  %35 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %8, align 8
  %36 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %39 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  store i32 %37, i32* %41, align 4
  %42 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %8, align 8
  %43 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %46 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 5
  store i32 %44, i32* %48, align 4
  %49 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %8, align 8
  %50 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %53 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %58 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  store i32 %56, i32* %60, align 4
  %61 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %8, align 8
  %62 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %115

66:                                               ; preds = %26
  %67 = load i32, i32* %10, align 4
  %68 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %69 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  store i32 %67, i32* %71, align 4
  %72 = load i32, i32* @IB_NOTICE_TRAP_DR_NOTICE, align 4
  %73 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %74 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %79 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ARRAY_SIZE(i32 %82)
  %84 = icmp sgt i32 %77, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %66
  %86 = load i32, i32* @IB_NOTICE_TRAP_DR_TRUNC, align 4
  %87 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %88 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %86
  store i32 %92, i32* %90, align 4
  %93 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %94 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ARRAY_SIZE(i32 %97)
  store i32 %98, i32* %12, align 4
  br label %99

99:                                               ; preds = %85, %66
  %100 = load i32, i32* %12, align 4
  %101 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %102 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 4
  %107 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %108 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = load i32, i32* %12, align 4
  %114 = call i32 @memcpy(i32 %111, i32* %112, i32 %113)
  br label %115

115:                                              ; preds = %99, %26
  %116 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %117 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %116, i32 0, i32 0
  store i32 36, i32* %117, align 4
  %118 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %7, align 8
  %119 = load %struct.trap_node*, %struct.trap_node** %13, align 8
  %120 = call i32 @send_trap(%struct.hfi1_ibport* %118, %struct.trap_node* %119)
  br label %121

121:                                              ; preds = %115, %25
  ret void
}

declare dso_local %struct.TYPE_6__* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local %struct.trap_node* @create_trap_node(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @send_trap(%struct.hfi1_ibport*, %struct.trap_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
