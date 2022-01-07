; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_ib_sa_join_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/core/extr_multicast.c_ib_sa_join_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_sa_multicast = type { i32 (i32, %struct.ib_sa_multicast*)*, i8*, i32, %struct.ib_sa_mcmember_rec }
%struct.ib_sa_mcmember_rec = type { i32 }
%struct.ib_sa_client = type { i32 }
%struct.ib_device = type { i32 }
%struct.mcast_device = type { i64, i32* }
%struct.mcast_member = type { %struct.ib_sa_multicast, i32, i32, i32, i32, %struct.ib_sa_client* }

@mcast_client = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCAST_JOINING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_sa_multicast* @ib_sa_join_multicast(%struct.ib_sa_client* %0, %struct.ib_device* %1, i64 %2, %struct.ib_sa_mcmember_rec* %3, i32 %4, i32 %5, i32 (i32, %struct.ib_sa_multicast*)* %6, i8* %7) #0 {
  %9 = alloca %struct.ib_sa_multicast*, align 8
  %10 = alloca %struct.ib_sa_client*, align 8
  %11 = alloca %struct.ib_device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.ib_sa_mcmember_rec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32 (i32, %struct.ib_sa_multicast*)*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.mcast_device*, align 8
  %19 = alloca %struct.mcast_member*, align 8
  %20 = alloca %struct.ib_sa_multicast*, align 8
  %21 = alloca i32, align 4
  store %struct.ib_sa_client* %0, %struct.ib_sa_client** %10, align 8
  store %struct.ib_device* %1, %struct.ib_device** %11, align 8
  store i64 %2, i64* %12, align 8
  store %struct.ib_sa_mcmember_rec* %3, %struct.ib_sa_mcmember_rec** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 (i32, %struct.ib_sa_multicast*)* %6, i32 (i32, %struct.ib_sa_multicast*)** %16, align 8
  store i8* %7, i8** %17, align 8
  %22 = load %struct.ib_device*, %struct.ib_device** %11, align 8
  %23 = call %struct.mcast_device* @ib_get_client_data(%struct.ib_device* %22, i32* @mcast_client)
  store %struct.mcast_device* %23, %struct.mcast_device** %18, align 8
  %24 = load %struct.mcast_device*, %struct.mcast_device** %18, align 8
  %25 = icmp ne %struct.mcast_device* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %8
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.ib_sa_multicast* @ERR_PTR(i32 %28)
  store %struct.ib_sa_multicast* %29, %struct.ib_sa_multicast** %9, align 8
  br label %107

30:                                               ; preds = %8
  %31 = load i32, i32* %15, align 4
  %32 = call %struct.mcast_member* @kmalloc(i32 48, i32 %31)
  store %struct.mcast_member* %32, %struct.mcast_member** %19, align 8
  %33 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %34 = icmp ne %struct.mcast_member* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.ib_sa_multicast* @ERR_PTR(i32 %37)
  store %struct.ib_sa_multicast* %38, %struct.ib_sa_multicast** %9, align 8
  br label %107

39:                                               ; preds = %30
  %40 = load %struct.ib_sa_client*, %struct.ib_sa_client** %10, align 8
  %41 = call i32 @ib_sa_client_get(%struct.ib_sa_client* %40)
  %42 = load %struct.ib_sa_client*, %struct.ib_sa_client** %10, align 8
  %43 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %44 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %43, i32 0, i32 5
  store %struct.ib_sa_client* %42, %struct.ib_sa_client** %44, align 8
  %45 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %46 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %46, i32 0, i32 3
  %48 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %13, align 8
  %49 = bitcast %struct.ib_sa_mcmember_rec* %47 to i8*
  %50 = bitcast %struct.ib_sa_mcmember_rec* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 4, i1 false)
  %51 = load i32, i32* %14, align 4
  %52 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %53 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %53, i32 0, i32 2
  store i32 %51, i32* %54, align 8
  %55 = load i32 (i32, %struct.ib_sa_multicast*)*, i32 (i32, %struct.ib_sa_multicast*)** %16, align 8
  %56 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %57 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %57, i32 0, i32 0
  store i32 (i32, %struct.ib_sa_multicast*)* %55, i32 (i32, %struct.ib_sa_multicast*)** %58, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %61 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.ib_sa_multicast, %struct.ib_sa_multicast* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %64 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %63, i32 0, i32 4
  %65 = call i32 @init_completion(i32* %64)
  %66 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %67 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %66, i32 0, i32 3
  %68 = call i32 @atomic_set(i32* %67, i32 1)
  %69 = load i32, i32* @MCAST_JOINING, align 4
  %70 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %71 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load %struct.mcast_device*, %struct.mcast_device** %18, align 8
  %73 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load %struct.mcast_device*, %struct.mcast_device** %18, align 8
  %77 = getelementptr inbounds %struct.mcast_device, %struct.mcast_device* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = sub i64 %75, %78
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load %struct.ib_sa_mcmember_rec*, %struct.ib_sa_mcmember_rec** %13, align 8
  %82 = getelementptr inbounds %struct.ib_sa_mcmember_rec, %struct.ib_sa_mcmember_rec* %81, i32 0, i32 0
  %83 = load i32, i32* %15, align 4
  %84 = call i32 @acquire_group(i32* %80, i32* %82, i32 %83)
  %85 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %86 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %88 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %39
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %21, align 4
  br label %100

94:                                               ; preds = %39
  %95 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %96 = getelementptr inbounds %struct.mcast_member, %struct.mcast_member* %95, i32 0, i32 0
  store %struct.ib_sa_multicast* %96, %struct.ib_sa_multicast** %20, align 8
  %97 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %98 = call i32 @queue_join(%struct.mcast_member* %97)
  %99 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %20, align 8
  store %struct.ib_sa_multicast* %99, %struct.ib_sa_multicast** %9, align 8
  br label %107

100:                                              ; preds = %91
  %101 = load %struct.ib_sa_client*, %struct.ib_sa_client** %10, align 8
  %102 = call i32 @ib_sa_client_put(%struct.ib_sa_client* %101)
  %103 = load %struct.mcast_member*, %struct.mcast_member** %19, align 8
  %104 = call i32 @kfree(%struct.mcast_member* %103)
  %105 = load i32, i32* %21, align 4
  %106 = call %struct.ib_sa_multicast* @ERR_PTR(i32 %105)
  store %struct.ib_sa_multicast* %106, %struct.ib_sa_multicast** %9, align 8
  br label %107

107:                                              ; preds = %100, %94, %35, %26
  %108 = load %struct.ib_sa_multicast*, %struct.ib_sa_multicast** %9, align 8
  ret %struct.ib_sa_multicast* %108
}

declare dso_local %struct.mcast_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local %struct.ib_sa_multicast* @ERR_PTR(i32) #1

declare dso_local %struct.mcast_member* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_sa_client_get(%struct.ib_sa_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @acquire_group(i32*, i32*, i32) #1

declare dso_local i32 @queue_join(%struct.mcast_member*) #1

declare dso_local i32 @ib_sa_client_put(%struct.ib_sa_client*) #1

declare dso_local i32 @kfree(%struct.mcast_member*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
