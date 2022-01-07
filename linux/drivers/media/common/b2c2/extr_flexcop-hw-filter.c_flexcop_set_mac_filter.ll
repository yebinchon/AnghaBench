; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_set_mac_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/common/b2c2/extr_flexcop-hw-filter.c_flexcop_set_mac_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)*, void (%struct.TYPE_9__*, %struct.flexcop_device*, i32)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8*, i8* }
%struct.TYPE_7__ = type { i8*, i8*, i8*, i8* }

@mac_address_41c = common dso_local global i32 0, align 4
@mac_address_418 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flexcop_set_mac_filter(%struct.flexcop_device* %0, i8** %1) #0 {
  %3 = alloca %struct.flexcop_device*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca %struct.TYPE_9__, align 8
  %7 = alloca %struct.TYPE_9__, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %3, align 8
  store i8** %1, i8*** %4, align 8
  %8 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %9 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %8, i32 0, i32 1
  %10 = load void (%struct.TYPE_9__*, %struct.flexcop_device*, i32)*, void (%struct.TYPE_9__*, %struct.flexcop_device*, i32)** %9, align 8
  %11 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %12 = load i32, i32* @mac_address_41c, align 4
  call void %10(%struct.TYPE_9__* sret %7, %struct.flexcop_device* %11, i32 %12)
  %13 = bitcast %struct.TYPE_9__* %6 to i8*
  %14 = bitcast %struct.TYPE_9__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 48, i1 false)
  %15 = load i8**, i8*** %4, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load i8**, i8*** %4, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 1
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i8**, i8*** %4, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i8**, i8*** %4, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 3
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load i8**, i8*** %4, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 4
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load i8**, i8*** %4, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 5
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %46 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %45, i32 0, i32 0
  %47 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)** %46, align 8
  %48 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %49 = load i32, i32* @mac_address_418, align 4
  %50 = call i32 %47(%struct.flexcop_device* %48, i32 %49, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %5)
  %51 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %52 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %51, i32 0, i32 0
  %53 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_9__*)** %52, align 8
  %54 = load %struct.flexcop_device*, %struct.flexcop_device** %3, align 8
  %55 = load i32, i32* @mac_address_41c, align 4
  %56 = call i32 %53(%struct.flexcop_device* %54, i32 %55, %struct.TYPE_9__* byval(%struct.TYPE_9__) align 8 %6)
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
