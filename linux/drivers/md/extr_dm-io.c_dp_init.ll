; ModuleID = '/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_dp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/md/extr_dm-io.c_dp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_request = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32*, i32, i32 }
%struct.dpages = type { i64, i32* }

@REQ_OP_READ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_io_request*, %struct.dpages*, i64)* @dp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_init(%struct.dm_io_request* %0, %struct.dpages* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dm_io_request*, align 8
  %6 = alloca %struct.dpages*, align 8
  %7 = alloca i64, align 8
  store %struct.dm_io_request* %0, %struct.dm_io_request** %5, align 8
  store %struct.dpages* %1, %struct.dpages** %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load %struct.dpages*, %struct.dpages** %6, align 8
  %9 = getelementptr inbounds %struct.dpages, %struct.dpages* %8, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = load %struct.dpages*, %struct.dpages** %6, align 8
  %11 = getelementptr inbounds %struct.dpages, %struct.dpages* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.dm_io_request*, %struct.dm_io_request** %5, align 8
  %13 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %76 [
    i32 129, label %16
    i32 131, label %28
    i32 128, label %36
    i32 130, label %68
  ]

16:                                               ; preds = %3
  %17 = load %struct.dpages*, %struct.dpages** %6, align 8
  %18 = load %struct.dm_io_request*, %struct.dm_io_request** %5, align 8
  %19 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.dm_io_request*, %struct.dm_io_request** %5, align 8
  %24 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @list_dp_init(%struct.dpages* %17, i32 %22, i32 %26)
  br label %79

28:                                               ; preds = %3
  %29 = load %struct.dpages*, %struct.dpages** %6, align 8
  %30 = load %struct.dm_io_request*, %struct.dm_io_request** %5, align 8
  %31 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bio_dp_init(%struct.dpages* %29, i32 %34)
  br label %79

36:                                               ; preds = %3
  %37 = load %struct.dm_io_request*, %struct.dm_io_request** %5, align 8
  %38 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @flush_kernel_vmap_range(i32* %41, i64 %42)
  %44 = load %struct.dm_io_request*, %struct.dm_io_request** %5, align 8
  %45 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @REQ_OP_READ, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %36
  %50 = load %struct.dm_io_request*, %struct.dm_io_request** %5, align 8
  %51 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.dpages*, %struct.dpages** %6, align 8
  %56 = getelementptr inbounds %struct.dpages, %struct.dpages* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.dpages*, %struct.dpages** %6, align 8
  %59 = getelementptr inbounds %struct.dpages, %struct.dpages* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %49, %36
  %61 = load %struct.dpages*, %struct.dpages** %6, align 8
  %62 = load %struct.dm_io_request*, %struct.dm_io_request** %5, align 8
  %63 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @vm_dp_init(%struct.dpages* %61, i32* %66)
  br label %79

68:                                               ; preds = %3
  %69 = load %struct.dpages*, %struct.dpages** %6, align 8
  %70 = load %struct.dm_io_request*, %struct.dm_io_request** %5, align 8
  %71 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @km_dp_init(%struct.dpages* %69, i32 %74)
  br label %79

76:                                               ; preds = %3
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %80

79:                                               ; preds = %68, %60, %28, %16
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @list_dp_init(%struct.dpages*, i32, i32) #1

declare dso_local i32 @bio_dp_init(%struct.dpages*, i32) #1

declare dso_local i32 @flush_kernel_vmap_range(i32*, i64) #1

declare dso_local i32 @vm_dp_init(%struct.dpages*, i32*) #1

declare dso_local i32 @km_dp_init(%struct.dpages*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
