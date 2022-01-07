; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_tunnels_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx4/extr_mad.c_mlx4_ib_tunnels_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i32, i32, i32)* @mlx4_ib_tunnels_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_tunnels_update(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %63, label %13

13:                                               ; preds = %4
  %14 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %20
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @clean_vf_mcast(%struct.TYPE_4__* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %26 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mlx4_master_func_num(i32 %27)
  %29 = icmp eq i32 %24, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %13
  %31 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @destroy_pv_resources(%struct.mlx4_ib_dev* %31, i32 %32, i32 %33, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %30, %13
  %45 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %49 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @destroy_pv_resources(%struct.mlx4_ib_dev* %45, i32 %46, i32 %47, i32 %61, i32 1)
  store i32 0, i32* %5, align 4
  br label %109

63:                                               ; preds = %4
  %64 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %65 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @create_pv_resources(i32* %65, i32 %66, i32 %67, i32 1, i32 %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %107, label %85

85:                                               ; preds = %63
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %88 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mlx4_master_func_num(i32 %89)
  %91 = icmp eq i32 %86, %90
  br i1 %91, label %92, label %107

92:                                               ; preds = %85
  %93 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %94 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %93, i32 0, i32 1
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %98 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @create_pv_resources(i32* %94, i32 %95, i32 %96, i32 0, i32 %105)
  store i32 %106, i32* %10, align 4
  br label %107

107:                                              ; preds = %92, %85, %63
  %108 = load i32, i32* %10, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %107, %44
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @clean_vf_mcast(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mlx4_master_func_num(i32) #1

declare dso_local i32 @destroy_pv_resources(%struct.mlx4_ib_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @create_pv_resources(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
