; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_bad_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/hfi1/extr_mad.c_hfi1_bad_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi1_ibport = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.trap_node = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_8__ = type { i32 }

@IB_NOTICE_TYPE_SECURITY = common dso_local global i32 0, align 4
@OPA_TRAP_BAD_P_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hfi1_bad_pkey(%struct.hfi1_ibport* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.hfi1_ibport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.trap_node*, align 8
  %16 = alloca i32, align 4
  store %struct.hfi1_ibport* %0, %struct.hfi1_ibport** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %18 = call %struct.TYPE_8__* @ppd_from_ibp(%struct.hfi1_ibport* %17)
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %16, align 4
  %21 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %22 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %27 = getelementptr inbounds %struct.hfi1_ibport, %struct.hfi1_ibport* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load i32, i32* @IB_NOTICE_TYPE_SECURITY, align 4
  %32 = load i32, i32* @OPA_TRAP_BAD_P_KEY, align 4
  %33 = load i32, i32* %16, align 4
  %34 = call %struct.trap_node* @create_trap_node(i32 %31, i32 %32, i32 %33)
  store %struct.trap_node* %34, %struct.trap_node** %15, align 8
  %35 = load %struct.trap_node*, %struct.trap_node** %15, align 8
  %36 = icmp ne %struct.trap_node* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %7
  br label %80

38:                                               ; preds = %7
  %39 = load i32, i32* %13, align 4
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.trap_node*, %struct.trap_node** %15, align 8
  %42 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 5
  store i8* %40, i8** %44, align 8
  %45 = load i32, i32* %14, align 4
  %46 = call i8* @cpu_to_be32(i32 %45)
  %47 = load %struct.trap_node*, %struct.trap_node** %15, align 8
  %48 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i8* %46, i8** %50, align 8
  %51 = load i32, i32* %9, align 4
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.trap_node*, %struct.trap_node** %15, align 8
  %54 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  store i8* %52, i8** %56, align 8
  %57 = load i32, i32* %10, align 4
  %58 = shl i32 %57, 3
  %59 = load %struct.trap_node*, %struct.trap_node** %15, align 8
  %60 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = load %struct.trap_node*, %struct.trap_node** %15, align 8
  %66 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 2
  store i8* %64, i8** %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.trap_node*, %struct.trap_node** %15, align 8
  %72 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i8* %70, i8** %74, align 8
  %75 = load %struct.trap_node*, %struct.trap_node** %15, align 8
  %76 = getelementptr inbounds %struct.trap_node, %struct.trap_node* %75, i32 0, i32 0
  store i32 48, i32* %76, align 8
  %77 = load %struct.hfi1_ibport*, %struct.hfi1_ibport** %8, align 8
  %78 = load %struct.trap_node*, %struct.trap_node** %15, align 8
  %79 = call i32 @send_trap(%struct.hfi1_ibport* %77, %struct.trap_node* %78)
  br label %80

80:                                               ; preds = %38, %37
  ret void
}

declare dso_local %struct.TYPE_8__* @ppd_from_ibp(%struct.hfi1_ibport*) #1

declare dso_local %struct.trap_node* @create_trap_node(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @send_trap(%struct.hfi1_ibport*, %struct.trap_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
