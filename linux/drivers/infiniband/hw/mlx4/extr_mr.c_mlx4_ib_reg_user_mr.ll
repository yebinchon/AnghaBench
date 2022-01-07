; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_reg_user_mr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mr.c_mlx4_ib_reg_user_mr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32, i8*, i8*, i32, i32 }
%struct.ib_pd = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_dev = type { i32 }
%struct.mlx4_ib_mr = type { i32, %struct.TYPE_6__, %struct.ib_mr }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mr* @mlx4_ib_reg_user_mr(%struct.ib_pd* %0, i8* %1, i8* %2, i8* %3, i32 %4, %struct.ib_udata* %5) #0 {
  %7 = alloca %struct.ib_mr*, align 8
  %8 = alloca %struct.ib_pd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_udata*, align 8
  %14 = alloca %struct.mlx4_ib_dev*, align 8
  %15 = alloca %struct.mlx4_ib_mr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.ib_udata* %5, %struct.ib_udata** %13, align 8
  %19 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %20 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.mlx4_ib_dev* @to_mdev(i32 %21)
  store %struct.mlx4_ib_dev* %22, %struct.mlx4_ib_dev** %14, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mlx4_ib_mr* @kzalloc(i32 48, i32 %23)
  store %struct.mlx4_ib_mr* %24, %struct.mlx4_ib_mr** %15, align 8
  %25 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %26 = icmp ne %struct.mlx4_ib_mr* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %6
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.ib_mr* @ERR_PTR(i32 %29)
  store %struct.ib_mr* %30, %struct.ib_mr** %7, align 8
  br label %146

31:                                               ; preds = %6
  %32 = load %struct.ib_udata*, %struct.ib_udata** %13, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @mlx4_get_umem_mr(%struct.ib_udata* %32, i8* %33, i8* %34, i32 %35)
  %37 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %38 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @IS_ERR(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %31
  %45 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %46 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @PTR_ERR(i32 %47)
  store i32 %48, i32* %17, align 4
  br label %141

49:                                               ; preds = %31
  %50 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %51 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ib_umem_page_count(i32 %52)
  store i32 %53, i32* %18, align 4
  %54 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %55 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @mlx4_ib_umem_calc_optimal_mtt_size(i32 %56, i8* %57, i32* %18)
  store i32 %58, i32* %16, align 4
  %59 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %60 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %63 = call %struct.TYPE_5__* @to_mpd(%struct.ib_pd* %62)
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %11, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @convert_access(i32 %68)
  %70 = load i32, i32* %18, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %73 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %72, i32 0, i32 1
  %74 = call i32 @mlx4_mr_alloc(i32 %61, i32 %65, i8* %66, i8* %67, i32 %69, i32 %70, i32 %71, %struct.TYPE_6__* %73)
  store i32 %74, i32* %17, align 4
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %49
  br label %136

78:                                               ; preds = %49
  %79 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %80 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %84 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev* %79, i32* %82, i32 %85)
  store i32 %86, i32* %17, align 4
  %87 = load i32, i32* %17, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %78
  br label %126

90:                                               ; preds = %78
  %91 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %14, align 8
  %92 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %95 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %94, i32 0, i32 1
  %96 = call i32 @mlx4_mr_enable(i32 %93, %struct.TYPE_6__* %95)
  store i32 %96, i32* %17, align 4
  %97 = load i32, i32* %17, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %90
  br label %126

100:                                              ; preds = %90
  %101 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %102 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %106 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %106, i32 0, i32 3
  store i32 %104, i32* %107, align 8
  %108 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %109 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %109, i32 0, i32 4
  store i32 %104, i32* %110, align 4
  %111 = load i8*, i8** %10, align 8
  %112 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %113 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %113, i32 0, i32 2
  store i8* %111, i8** %114, align 8
  %115 = load i8*, i8** %11, align 8
  %116 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %117 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %117, i32 0, i32 1
  store i8* %115, i8** %118, align 8
  %119 = load i32, i32* %16, align 4
  %120 = shl i32 1, %119
  %121 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %122 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %122, i32 0, i32 0
  store i32 %120, i32* %123, align 8
  %124 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %125 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %124, i32 0, i32 2
  store %struct.ib_mr* %125, %struct.ib_mr** %7, align 8
  br label %146

126:                                              ; preds = %99, %89
  %127 = load %struct.ib_pd*, %struct.ib_pd** %8, align 8
  %128 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call %struct.mlx4_ib_dev* @to_mdev(i32 %129)
  %131 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %134 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %133, i32 0, i32 1
  %135 = call i32 @mlx4_mr_free(i32 %132, %struct.TYPE_6__* %134)
  br label %136

136:                                              ; preds = %126, %77
  %137 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %138 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @ib_umem_release(i32 %139)
  br label %141

141:                                              ; preds = %136, %44
  %142 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %15, align 8
  %143 = call i32 @kfree(%struct.mlx4_ib_mr* %142)
  %144 = load i32, i32* %17, align 4
  %145 = call %struct.ib_mr* @ERR_PTR(i32 %144)
  store %struct.ib_mr* %145, %struct.ib_mr** %7, align 8
  br label %146

146:                                              ; preds = %141, %100, %27
  %147 = load %struct.ib_mr*, %struct.ib_mr** %7, align 8
  ret %struct.ib_mr* %147
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local %struct.mlx4_ib_mr* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_mr* @ERR_PTR(i32) #1

declare dso_local i32 @mlx4_get_umem_mr(%struct.ib_udata*, i8*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ib_umem_page_count(i32) #1

declare dso_local i32 @mlx4_ib_umem_calc_optimal_mtt_size(i32, i8*, i32*) #1

declare dso_local i32 @mlx4_mr_alloc(i32, i32, i8*, i8*, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local %struct.TYPE_5__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @convert_access(i32) #1

declare dso_local i32 @mlx4_ib_umem_write_mtt(%struct.mlx4_ib_dev*, i32*, i32) #1

declare dso_local i32 @mlx4_mr_enable(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mlx4_mr_free(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.mlx4_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
