; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_copy_sg_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_copy_sg_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_hash_reqctx = type { i32, i32, %struct.TYPE_2__*, i64, i32, %struct.scatterlist* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.scatterlist = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HASH_FLAGS_SGS_ALLOCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_hash_reqctx*, %struct.scatterlist*, i32)* @s5p_hash_copy_sg_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_copy_sg_lists(%struct.s5p_hash_reqctx* %0, %struct.scatterlist* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5p_hash_reqctx*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  store %struct.s5p_hash_reqctx* %0, %struct.s5p_hash_reqctx** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %13 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %8, align 4
  %15 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %16 = call i32 @sg_nents(%struct.scatterlist* %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %18 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = add i32 %22, 1
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %21, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.scatterlist* @kmalloc_array(i32 %25, i32 16, i32 %26)
  %28 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %29 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %28, i32 0, i32 5
  store %struct.scatterlist* %27, %struct.scatterlist** %29, align 8
  %30 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %31 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %30, i32 0, i32 5
  %32 = load %struct.scatterlist*, %struct.scatterlist** %31, align 8
  %33 = icmp ne %struct.scatterlist* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %24
  %35 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %36 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %147

39:                                               ; preds = %24
  %40 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %41 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %40, i32 0, i32 5
  %42 = load %struct.scatterlist*, %struct.scatterlist** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @sg_init_table(%struct.scatterlist* %42, i32 %43)
  %45 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %46 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %45, i32 0, i32 5
  %47 = load %struct.scatterlist*, %struct.scatterlist** %46, align 8
  store %struct.scatterlist* %47, %struct.scatterlist** %10, align 8
  %48 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %49 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %48, i32 0, i32 3
  store i64 0, i64* %49, align 8
  %50 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %51 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %39
  %55 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %56 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %57 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %62 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sg_set_buf(%struct.scatterlist* %55, i32 %60, i32 %63)
  %65 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %66 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %65)
  store %struct.scatterlist* %66, %struct.scatterlist** %10, align 8
  %67 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %68 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 1
  store i64 %70, i64* %68, align 8
  br label %71

71:                                               ; preds = %54, %39
  br label %72

72:                                               ; preds = %83, %71
  %73 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %74 = icmp ne %struct.scatterlist* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %78 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp uge i32 %76, %79
  br label %81

81:                                               ; preds = %75, %72
  %82 = phi i1 [ false, %72 ], [ %80, %75 ]
  br i1 %82, label %83, label %91

83:                                               ; preds = %81
  %84 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %85 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %8, align 4
  %89 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %90 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %89)
  store %struct.scatterlist* %90, %struct.scatterlist** %6, align 8
  br label %72

91:                                               ; preds = %81
  br label %92

92:                                               ; preds = %131, %91
  %93 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %94 = icmp ne %struct.scatterlist* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %92
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %95, %92
  %99 = phi i1 [ false, %92 ], [ %97, %95 ]
  br i1 %99, label %100, label %140

100:                                              ; preds = %98
  %101 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %102 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sub i32 %103, %104
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* %11, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %100
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %109, %100
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* %7, align 4
  %114 = sub i32 %113, %112
  store i32 %114, i32* %7, align 4
  %115 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %116 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %117 = call i32 @sg_page(%struct.scatterlist* %116)
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %120 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = zext i32 %122 to i64
  %124 = add nsw i64 %121, %123
  %125 = call i32 @sg_set_page(%struct.scatterlist* %115, i32 %117, i32 %118, i64 %124)
  store i32 0, i32* %8, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ule i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %111
  %129 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %130 = call i32 @sg_mark_end(%struct.scatterlist* %129)
  br label %131

131:                                              ; preds = %128, %111
  %132 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %133 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %132)
  store %struct.scatterlist* %133, %struct.scatterlist** %10, align 8
  %134 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %135 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 %136, 1
  store i64 %137, i64* %135, align 8
  %138 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %139 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %138)
  store %struct.scatterlist* %139, %struct.scatterlist** %6, align 8
  br label %92

140:                                              ; preds = %98
  %141 = load i32, i32* @HASH_FLAGS_SGS_ALLOCED, align 4
  %142 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %5, align 8
  %143 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %142, i32 0, i32 2
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = call i32 @set_bit(i32 %141, i32* %145)
  store i32 0, i32* %4, align 4
  br label %147

147:                                              ; preds = %140, %34
  %148 = load i32, i32* %4, align 4
  ret i32 %148
}

declare dso_local i32 @sg_nents(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_set_page(%struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

declare dso_local i32 @sg_mark_end(%struct.scatterlist*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
