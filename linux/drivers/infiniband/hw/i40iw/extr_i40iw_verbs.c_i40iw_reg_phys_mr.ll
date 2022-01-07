; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_reg_phys_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/i40iw/extr_i40iw_verbs.c_i40iw_reg_phys_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i8*, i8*, i32, %struct.ib_pd* }
%struct.ib_pd = type { i32 }
%struct.i40iw_pd = type { i32 }
%struct.i40iw_device = type { i32 }
%struct.i40iw_pbl = type { i8*, %struct.i40iw_mr* }
%struct.i40iw_mr = type { i32, %struct.ib_mr, i8*, i8**, i8*, i32, %struct.i40iw_pbl }

@I40IW_ACCESS_FLAGS_LOCALREAD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IW_MEMREG_TYPE_MEM = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @i40iw_reg_phys_mr(%struct.ib_pd* %0, i8* %1, i8* %2, i32 %3, i8** %4) #0 {
  %6 = alloca %struct.ib_mr*, align 8
  %7 = alloca %struct.ib_pd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.i40iw_pd*, align 8
  %13 = alloca %struct.i40iw_device*, align 8
  %14 = alloca %struct.i40iw_pbl*, align 8
  %15 = alloca %struct.i40iw_mr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %20 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %21 = call %struct.i40iw_pd* @to_iwpd(%struct.ib_pd* %20)
  store %struct.i40iw_pd* %21, %struct.i40iw_pd** %12, align 8
  %22 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %23 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.i40iw_device* @to_iwdev(i32 %24)
  store %struct.i40iw_device* %25, %struct.i40iw_device** %13, align 8
  %26 = load i32, i32* @I40IW_ACCESS_FLAGS_LOCALREAD, align 4
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.i40iw_mr* @kzalloc(i32 88, i32 %27)
  store %struct.i40iw_mr* %28, %struct.i40iw_mr** %15, align 8
  %29 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %30 = icmp ne %struct.i40iw_mr* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ib_mr* @ERR_PTR(i32 %33)
  store %struct.ib_mr* %34, %struct.ib_mr** %6, align 8
  br label %113

35:                                               ; preds = %5
  %36 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %37 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %38 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %38, i32 0, i32 3
  store %struct.ib_pd* %36, %struct.ib_pd** %39, align 8
  %40 = load %struct.ib_pd*, %struct.ib_pd** %7, align 8
  %41 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %44 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %47 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %46, i32 0, i32 6
  store %struct.i40iw_pbl* %47, %struct.i40iw_pbl** %14, align 8
  %48 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %49 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %14, align 8
  %50 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %49, i32 0, i32 1
  store %struct.i40iw_mr* %48, %struct.i40iw_mr** %50, align 8
  %51 = load i32, i32* @IW_MEMREG_TYPE_MEM, align 4
  %52 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %53 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 8
  %54 = load i8**, i8*** %11, align 8
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.i40iw_pbl*, %struct.i40iw_pbl** %14, align 8
  %57 = getelementptr inbounds %struct.i40iw_pbl, %struct.i40iw_pbl* %56, i32 0, i32 0
  store i8* %55, i8** %57, align 8
  %58 = load %struct.i40iw_device*, %struct.i40iw_device** %13, align 8
  %59 = call i8* @i40iw_create_stag(%struct.i40iw_device* %58)
  store i8* %59, i8** %17, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %35
  %63 = load i32, i32* @EOVERFLOW, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %19, align 4
  br label %108

65:                                               ; preds = %35
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @i40iw_get_user_access(i32 %66)
  %68 = load i32, i32* %18, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %18, align 4
  %70 = load i8*, i8** %17, align 8
  %71 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %72 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %75 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %75, i32 0, i32 1
  store i8* %73, i8** %76, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %79 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  %81 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %82 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %85 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %84, i32 0, i32 3
  %86 = load i8**, i8*** %85, align 8
  %87 = getelementptr inbounds i8*, i8** %86, i64 0
  store i8* %83, i8** %87, align 8
  %88 = load i8*, i8** %9, align 8
  %89 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %90 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %89, i32 0, i32 2
  store i8* %88, i8** %90, align 8
  %91 = load %struct.i40iw_device*, %struct.i40iw_device** %13, align 8
  %92 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @i40iw_hwreg_mr(%struct.i40iw_device* %91, %struct.i40iw_mr* %92, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %65
  %98 = load %struct.i40iw_device*, %struct.i40iw_device** %13, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = call i32 @i40iw_free_stag(%struct.i40iw_device* %98, i8* %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %19, align 4
  br label %108

103:                                              ; preds = %65
  %104 = load %struct.i40iw_pd*, %struct.i40iw_pd** %12, align 8
  %105 = call i32 @i40iw_add_pdusecount(%struct.i40iw_pd* %104)
  %106 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %107 = getelementptr inbounds %struct.i40iw_mr, %struct.i40iw_mr* %106, i32 0, i32 1
  store %struct.ib_mr* %107, %struct.ib_mr** %6, align 8
  br label %113

108:                                              ; preds = %97, %62
  %109 = load %struct.i40iw_mr*, %struct.i40iw_mr** %15, align 8
  %110 = call i32 @kfree(%struct.i40iw_mr* %109)
  %111 = load i32, i32* %19, align 4
  %112 = call %struct.ib_mr* @ERR_PTR(i32 %111)
  store %struct.ib_mr* %112, %struct.ib_mr** %6, align 8
  br label %113

113:                                              ; preds = %108, %103, %31
  %114 = load %struct.ib_mr*, %struct.ib_mr** %6, align 8
  ret %struct.ib_mr* %114
}

declare dso_local %struct.i40iw_pd* @to_iwpd(%struct.ib_pd*) #1

declare dso_local %struct.i40iw_device* @to_iwdev(i32) #1

declare dso_local %struct.i40iw_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i8* @i40iw_create_stag(%struct.i40iw_device*) #1

declare dso_local i32 @i40iw_get_user_access(i32) #1

declare dso_local i32 @i40iw_hwreg_mr(%struct.i40iw_device*, %struct.i40iw_mr*, i32) #1

declare dso_local i32 @i40iw_free_stag(%struct.i40iw_device*, i8*) #1

declare dso_local i32 @i40iw_add_pdusecount(%struct.i40iw_pd*) #1

declare dso_local i32 @kfree(%struct.i40iw_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
