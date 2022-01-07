; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_query_qp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/sw/siw/extr_siw_verbs.c_siw_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.ib_qp_init_attr = type { %struct.TYPE_6__, i32, i32, i32, i32 }
%struct.siw_qp = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.siw_device = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SIW_MAX_INLINE = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_WRITE = common dso_local global i32 0, align 4
@IB_ACCESS_REMOTE_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @siw_query_qp(%struct.ib_qp* %0, %struct.ib_qp_attr* %1, i32 %2, %struct.ib_qp_init_attr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_qp*, align 8
  %7 = alloca %struct.ib_qp_attr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ib_qp_init_attr*, align 8
  %10 = alloca %struct.siw_qp*, align 8
  %11 = alloca %struct.siw_device*, align 8
  store %struct.ib_qp* %0, %struct.ib_qp** %6, align 8
  store %struct.ib_qp_attr* %1, %struct.ib_qp_attr** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %9, align 8
  %12 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %13 = icmp ne %struct.ib_qp* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %16 = icmp ne %struct.ib_qp_attr* %15, null
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %19 = icmp ne %struct.ib_qp_init_attr* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %22 = call %struct.siw_qp* @to_siw_qp(%struct.ib_qp* %21)
  store %struct.siw_qp* %22, %struct.siw_qp** %10, align 8
  %23 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %24 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.siw_device* @to_siw_dev(i32 %25)
  store %struct.siw_device* %26, %struct.siw_device** %11, align 8
  br label %30

27:                                               ; preds = %17, %14, %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %116

30:                                               ; preds = %20
  %31 = load i32, i32* @SIW_MAX_INLINE, align 4
  %32 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %33 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  store i32 %31, i32* %34, align 4
  %35 = load %struct.siw_qp*, %struct.siw_qp** %10, align 8
  %36 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %40 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load %struct.siw_qp*, %struct.siw_qp** %10, align 8
  %43 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %47 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load %struct.siw_qp*, %struct.siw_qp** %10, align 8
  %50 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %54 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %52, i32* %55, align 4
  %56 = load %struct.siw_qp*, %struct.siw_qp** %10, align 8
  %57 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %61 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.siw_device*, %struct.siw_device** %11, align 8
  %64 = getelementptr inbounds %struct.siw_device, %struct.siw_device* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ib_mtu_int_to_enum(i32 %67)
  %69 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %70 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %69, i32 0, i32 4
  store i32 %68, i32* %70, align 4
  %71 = load %struct.siw_qp*, %struct.siw_qp** %10, align 8
  %72 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %76 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.siw_qp*, %struct.siw_qp** %10, align 8
  %78 = getelementptr inbounds %struct.siw_qp, %struct.siw_qp* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %82 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %84 = load i32, i32* @IB_ACCESS_REMOTE_WRITE, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @IB_ACCESS_REMOTE_READ, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %89 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %91 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %94 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %93, i32 0, i32 4
  store i32 %92, i32* %94, align 4
  %95 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %96 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %99 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %101 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %104 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load %struct.ib_qp*, %struct.ib_qp** %6, align 8
  %106 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %109 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %9, align 8
  %111 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %110, i32 0, i32 0
  %112 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %7, align 8
  %113 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %112, i32 0, i32 1
  %114 = bitcast %struct.TYPE_6__* %111 to i8*
  %115 = bitcast %struct.TYPE_6__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 20, i1 false)
  store i32 0, i32* %5, align 4
  br label %116

116:                                              ; preds = %30, %27
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local %struct.siw_qp* @to_siw_qp(%struct.ib_qp*) #1

declare dso_local %struct.siw_device* @to_siw_dev(i32) #1

declare dso_local i32 @ib_mtu_int_to_enum(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
