; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_router_select_cd_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/radeon/extr_radeon_i2c.c_radeon_router_select_cd_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_connector = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radeon_router_select_cd_port(%struct.radeon_connector* %0) #0 {
  %2 = alloca %struct.radeon_connector*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_connector* %0, %struct.radeon_connector** %2, align 8
  %4 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %5 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %71

10:                                               ; preds = %1
  %11 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  br label %71

16:                                               ; preds = %10
  %17 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %18 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %21 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @radeon_i2c_get_byte(i32 %19, i32 %23, i32 3, i32* %3)
  %25 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %26 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %3, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %33 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %36 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @radeon_i2c_put_byte(i32 %34, i32 %38, i32 3, i32 %39)
  %41 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %42 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %45 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @radeon_i2c_get_byte(i32 %43, i32 %47, i32 1, i32* %3)
  %49 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %50 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %3, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %3, align 4
  %56 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %57 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %3, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %3, align 4
  %62 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %63 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.radeon_connector*, %struct.radeon_connector** %2, align 8
  %66 = getelementptr inbounds %struct.radeon_connector, %struct.radeon_connector* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @radeon_i2c_put_byte(i32 %64, i32 %68, i32 1, i32 %69)
  br label %71

71:                                               ; preds = %16, %15, %9
  ret void
}

declare dso_local i32 @radeon_i2c_get_byte(i32, i32, i32, i32*) #1

declare dso_local i32 @radeon_i2c_put_byte(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
