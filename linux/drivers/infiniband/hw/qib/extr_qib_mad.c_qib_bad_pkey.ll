; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_bad_pkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/qib/extr_qib_mad.c_qib_bad_pkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_ibport = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.ib_mad_notice_attr = type { %struct.TYPE_8__, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@IB_NOTICE_TYPE_SECURITY = common dso_local global i32 0, align 4
@IB_NOTICE_PROD_CA = common dso_local global i32 0, align 4
@IB_NOTICE_TRAP_BAD_PKEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qib_bad_pkey(%struct.qib_ibport* %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.qib_ibport*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.ib_mad_notice_attr, align 8
  store %struct.qib_ibport* %0, %struct.qib_ibport** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %16 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %17 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %22 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load i32, i32* @IB_NOTICE_TYPE_SECURITY, align 4
  %27 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 6
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 5
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @IB_NOTICE_PROD_CA, align 4
  %30 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 4
  store i32 %29, i32* %30, align 8
  %31 = load i32, i32* @IB_NOTICE_TRAP_BAD_PKEY, align 4
  %32 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 3
  store i32 %31, i32* %32, align 4
  %33 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %34 = call %struct.TYPE_7__* @ppd_from_ibp(%struct.qib_ibport* %33)
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpu_to_be16(i32 %36)
  %38 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 2
  store i32 %37, i32* %38, align 8
  %39 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 0
  %41 = call i32 @memset(%struct.TYPE_8__* %40, i32 0, i32 40)
  %42 = load i8*, i8** %13, align 8
  %43 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %14, align 8
  %47 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  store i8* %46, i8** %49, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i8* @cpu_to_be32(i32 %50)
  %52 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i8* %51, i8** %54, align 8
  %55 = load i32, i32* %10, align 4
  %56 = shl i32 %55, 28
  %57 = load i32, i32* %11, align 4
  %58 = or i32 %56, %57
  %59 = call i8* @cpu_to_be32(i32 %58)
  %60 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i8* @cpu_to_be32(i32 %63)
  %65 = getelementptr inbounds %struct.ib_mad_notice_attr, %struct.ib_mad_notice_attr* %15, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load %struct.qib_ibport*, %struct.qib_ibport** %8, align 8
  %69 = call i32 @qib_send_trap(%struct.qib_ibport* %68, %struct.ib_mad_notice_attr* %15, i32 80)
  ret void
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_7__* @ppd_from_ibp(%struct.qib_ibport*) #1

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @qib_send_trap(%struct.qib_ibport*, %struct.ib_mad_notice_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
