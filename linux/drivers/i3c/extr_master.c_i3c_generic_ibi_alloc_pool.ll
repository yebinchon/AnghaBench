; ModuleID = '/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_generic_ibi_alloc_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/i3c/extr_master.c_i3c_generic_ibi_alloc_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i3c_generic_ibi_pool = type { i32, i32, i8*, %struct.i3c_generic_ibi_slot*, i32, i32 }
%struct.i3c_generic_ibi_slot = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }
%struct.i3c_dev_desc = type { i32 }
%struct.i3c_ibi_setup = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i3c_generic_ibi_pool* @i3c_generic_ibi_alloc_pool(%struct.i3c_dev_desc* %0, %struct.i3c_ibi_setup* %1) #0 {
  %3 = alloca %struct.i3c_generic_ibi_pool*, align 8
  %4 = alloca %struct.i3c_dev_desc*, align 8
  %5 = alloca %struct.i3c_ibi_setup*, align 8
  %6 = alloca %struct.i3c_generic_ibi_pool*, align 8
  %7 = alloca %struct.i3c_generic_ibi_slot*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.i3c_dev_desc* %0, %struct.i3c_dev_desc** %4, align 8
  store %struct.i3c_ibi_setup* %1, %struct.i3c_ibi_setup** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.i3c_generic_ibi_pool* @kzalloc(i32 32, i32 %10)
  store %struct.i3c_generic_ibi_pool* %11, %struct.i3c_generic_ibi_pool** %6, align 8
  %12 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %13 = icmp ne %struct.i3c_generic_ibi_pool* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.i3c_generic_ibi_pool* @ERR_PTR(i32 %16)
  store %struct.i3c_generic_ibi_pool* %17, %struct.i3c_generic_ibi_pool** %3, align 8
  br label %123

18:                                               ; preds = %2
  %19 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %20 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %19, i32 0, i32 5
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %23 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %22, i32 0, i32 1
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %26 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %25, i32 0, i32 4
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %29 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i8* @kcalloc(i32 %30, i32 16, i32 %31)
  %33 = bitcast i8* %32 to %struct.i3c_generic_ibi_slot*
  %34 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %35 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %34, i32 0, i32 3
  store %struct.i3c_generic_ibi_slot* %33, %struct.i3c_generic_ibi_slot** %35, align 8
  %36 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %37 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %36, i32 0, i32 3
  %38 = load %struct.i3c_generic_ibi_slot*, %struct.i3c_generic_ibi_slot** %37, align 8
  %39 = icmp ne %struct.i3c_generic_ibi_slot* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %18
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %9, align 4
  br label %118

43:                                               ; preds = %18
  %44 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %45 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %43
  %49 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %50 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %53 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kcalloc(i32 %51, i32 %54, i32 %55)
  %57 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %58 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  %59 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %60 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %59, i32 0, i32 2
  %61 = load i8*, i8** %60, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %9, align 4
  br label %118

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %43
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %113, %67
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %71 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp ult i32 %69, %72
  br i1 %73, label %74, label %116

74:                                               ; preds = %68
  %75 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %76 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %75, i32 0, i32 3
  %77 = load %struct.i3c_generic_ibi_slot*, %struct.i3c_generic_ibi_slot** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.i3c_generic_ibi_slot, %struct.i3c_generic_ibi_slot* %77, i64 %79
  store %struct.i3c_generic_ibi_slot* %80, %struct.i3c_generic_ibi_slot** %7, align 8
  %81 = load %struct.i3c_dev_desc*, %struct.i3c_dev_desc** %4, align 8
  %82 = load %struct.i3c_generic_ibi_slot*, %struct.i3c_generic_ibi_slot** %7, align 8
  %83 = getelementptr inbounds %struct.i3c_generic_ibi_slot, %struct.i3c_generic_ibi_slot* %82, i32 0, i32 1
  %84 = call i32 @i3c_master_init_ibi_slot(%struct.i3c_dev_desc* %81, %struct.TYPE_2__* %83)
  %85 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %86 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %74
  %90 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %91 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %90, i32 0, i32 2
  %92 = load i8*, i8** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load %struct.i3c_ibi_setup*, %struct.i3c_ibi_setup** %5, align 8
  %95 = getelementptr inbounds %struct.i3c_ibi_setup, %struct.i3c_ibi_setup* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul i32 %93, %96
  %98 = zext i32 %97 to i64
  %99 = getelementptr i8, i8* %92, i64 %98
  %100 = load %struct.i3c_generic_ibi_slot*, %struct.i3c_generic_ibi_slot** %7, align 8
  %101 = getelementptr inbounds %struct.i3c_generic_ibi_slot, %struct.i3c_generic_ibi_slot* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  store i8* %99, i8** %102, align 8
  br label %103

103:                                              ; preds = %89, %74
  %104 = load %struct.i3c_generic_ibi_slot*, %struct.i3c_generic_ibi_slot** %7, align 8
  %105 = getelementptr inbounds %struct.i3c_generic_ibi_slot, %struct.i3c_generic_ibi_slot* %104, i32 0, i32 0
  %106 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %107 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %106, i32 0, i32 1
  %108 = call i32 @list_add_tail(i32* %105, i32* %107)
  %109 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %110 = getelementptr inbounds %struct.i3c_generic_ibi_pool, %struct.i3c_generic_ibi_pool* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %103
  %114 = load i32, i32* %8, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %68

116:                                              ; preds = %68
  %117 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  store %struct.i3c_generic_ibi_pool* %117, %struct.i3c_generic_ibi_pool** %3, align 8
  br label %123

118:                                              ; preds = %63, %40
  %119 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %6, align 8
  %120 = call i32 @i3c_generic_ibi_free_pool(%struct.i3c_generic_ibi_pool* %119)
  %121 = load i32, i32* %9, align 4
  %122 = call %struct.i3c_generic_ibi_pool* @ERR_PTR(i32 %121)
  store %struct.i3c_generic_ibi_pool* %122, %struct.i3c_generic_ibi_pool** %3, align 8
  br label %123

123:                                              ; preds = %118, %116, %14
  %124 = load %struct.i3c_generic_ibi_pool*, %struct.i3c_generic_ibi_pool** %3, align 8
  ret %struct.i3c_generic_ibi_pool* %124
}

declare dso_local %struct.i3c_generic_ibi_pool* @kzalloc(i32, i32) #1

declare dso_local %struct.i3c_generic_ibi_pool* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @i3c_master_init_ibi_slot(%struct.i3c_dev_desc*, %struct.TYPE_2__*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @i3c_generic_ibi_free_pool(%struct.i3c_generic_ibi_pool*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
