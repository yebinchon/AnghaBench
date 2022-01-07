; ModuleID = '/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_add_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/infiniband/hw/mlx5/extr_mr.c_add_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32, i32, %struct.mlx5_mr_cache }
%struct.mlx5_mr_cache = type { %struct.mlx5_cache_ent* }
%struct.mlx5_cache_ent = type { i64, i32, i32, i32, i32, i32 }
%struct.mlx5_ib_mr = type { i32, i32, i32, i32, %struct.mlx5_ib_dev*, i32 }

@create_mkey_in = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@memory_key_mkey_entry = common dso_local global i32 0, align 4
@MAX_PENDING_REG_MR = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@free = common dso_local global i32 0, align 4
@umr_en = common dso_local global i32 0, align 4
@access_mode_1_0 = common dso_local global i32 0, align 4
@access_mode_4_2 = common dso_local global i32 0, align 4
@qpn = common dso_local global i32 0, align 4
@translations_octword_size = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@reg_mr_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"create mkey failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, i32, i32)* @add_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_keys(%struct.mlx5_ib_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_ib_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5_mr_cache*, align 8
  %9 = alloca %struct.mlx5_cache_ent*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_ib_mr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.mlx5_ib_mr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %16, i32 0, i32 2
  store %struct.mlx5_mr_cache* %17, %struct.mlx5_mr_cache** %8, align 8
  %18 = load %struct.mlx5_mr_cache*, %struct.mlx5_mr_cache** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5_mr_cache, %struct.mlx5_mr_cache* %18, i32 0, i32 0
  %20 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %20, i64 %22
  store %struct.mlx5_cache_ent* %23, %struct.mlx5_cache_ent** %9, align 8
  %24 = load i32, i32* @create_mkey_in, align 4
  %25 = call i32 @MLX5_ST_SZ_BYTES(i32 %24)
  store i32 %25, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.mlx5_ib_mr* @kzalloc(i32 %26, i32 %27)
  store %struct.mlx5_ib_mr* %28, %struct.mlx5_ib_mr** %13, align 8
  %29 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %30 = icmp ne %struct.mlx5_ib_mr* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %3
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %166

34:                                               ; preds = %3
  %35 = load i32, i32* @create_mkey_in, align 4
  %36 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %37 = load i32, i32* @memory_key_mkey_entry, align 4
  %38 = call i8* @MLX5_ADDR_OF(i32 %35, %struct.mlx5_ib_mr* %36, i32 %37)
  store i8* %38, i8** %12, align 8
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %159, %34
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %162

43:                                               ; preds = %39
  %44 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %45 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAX_PENDING_REG_MR, align 8
  %48 = icmp sge i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EAGAIN, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %14, align 4
  br label %162

52:                                               ; preds = %43
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.mlx5_ib_mr* @kzalloc(i32 32, i32 %53)
  store %struct.mlx5_ib_mr* %54, %struct.mlx5_ib_mr** %11, align 8
  %55 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %56 = icmp ne %struct.mlx5_ib_mr* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %14, align 4
  br label %162

60:                                               ; preds = %52
  %61 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %66, i32 0, i32 0
  store i32 1, i32* %67, align 8
  %68 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %69 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %70 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %69, i32 0, i32 4
  store %struct.mlx5_ib_dev* %68, %struct.mlx5_ib_dev** %70, align 8
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = load i32, i32* @free, align 4
  %74 = call i32 @MLX5_SET(i8* %71, i8* %72, i32 %73, i32 1)
  %75 = load i8*, i8** %12, align 8
  %76 = load i8*, i8** %12, align 8
  %77 = load i32, i32* @umr_en, align 4
  %78 = call i32 @MLX5_SET(i8* %75, i8* %76, i32 %77, i32 1)
  %79 = load i8*, i8** %12, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i32, i32* @access_mode_1_0, align 4
  %82 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %83 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 3
  %86 = call i32 @MLX5_SET(i8* %79, i8* %80, i32 %81, i32 %85)
  %87 = load i8*, i8** %12, align 8
  %88 = load i8*, i8** %12, align 8
  %89 = load i32, i32* @access_mode_4_2, align 4
  %90 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %91 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = ashr i32 %92, 2
  %94 = and i32 %93, 7
  %95 = call i32 @MLX5_SET(i8* %87, i8* %88, i32 %89, i32 %94)
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load i32, i32* @qpn, align 4
  %99 = call i32 @MLX5_SET(i8* %96, i8* %97, i32 %98, i32 16777215)
  %100 = load i8*, i8** %12, align 8
  %101 = load i8*, i8** %12, align 8
  %102 = load i32, i32* @translations_octword_size, align 4
  %103 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %104 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @MLX5_SET(i8* %100, i8* %101, i32 %102, i32 %105)
  %107 = load i8*, i8** %12, align 8
  %108 = load i8*, i8** %12, align 8
  %109 = load i32, i32* @log_page_size, align 4
  %110 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %111 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @MLX5_SET(i8* %107, i8* %108, i32 %109, i32 %112)
  %114 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %115 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %114, i32 0, i32 4
  %116 = call i32 @spin_lock_irq(i32* %115)
  %117 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %118 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %122 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %121, i32 0, i32 4
  %123 = call i32 @spin_unlock_irq(i32* %122)
  %124 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %125 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %128 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %127, i32 0, i32 3
  %129 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %130 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %129, i32 0, i32 0
  %131 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %134 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @reg_mr_callback, align 4
  %137 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %138 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %137, i32 0, i32 1
  %139 = call i32 @mlx5_core_create_mkey_cb(i32 %126, i32* %128, i32* %130, %struct.mlx5_ib_mr* %131, i32 %132, i32 %135, i32 4, i32 %136, i32* %138)
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %14, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %60
  %143 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %144 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %143, i32 0, i32 4
  %145 = call i32 @spin_lock_irq(i32* %144)
  %146 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %147 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %148, -1
  store i64 %149, i64* %147, align 8
  %150 = load %struct.mlx5_cache_ent*, %struct.mlx5_cache_ent** %9, align 8
  %151 = getelementptr inbounds %struct.mlx5_cache_ent, %struct.mlx5_cache_ent* %150, i32 0, i32 4
  %152 = call i32 @spin_unlock_irq(i32* %151)
  %153 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %5, align 8
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %153, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %154)
  %156 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %11, align 8
  %157 = call i32 @kfree(%struct.mlx5_ib_mr* %156)
  br label %162

158:                                              ; preds = %60
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %15, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %15, align 4
  br label %39

162:                                              ; preds = %142, %57, %49, %39
  %163 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %13, align 8
  %164 = call i32 @kfree(%struct.mlx5_ib_mr* %163)
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %162, %31
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local %struct.mlx5_ib_mr* @kzalloc(i32, i32) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, %struct.mlx5_ib_mr*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mlx5_core_create_mkey_cb(i32, i32*, i32*, %struct.mlx5_ib_mr*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
