; ModuleID = '/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_prepare_sgs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/crypto/extr_s5p-sss.c_s5p_hash_prepare_sgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_hash_reqctx = type { i32, i32, %struct.scatterlist*, %struct.scatterlist*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }

@BUFLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_hash_reqctx*, %struct.scatterlist*, i32, i32)* @s5p_hash_prepare_sgs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_hash_prepare_sgs(%struct.s5p_hash_reqctx* %0, %struct.scatterlist* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5p_hash_reqctx*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.scatterlist*, align 8
  store %struct.s5p_hash_reqctx* %0, %struct.s5p_hash_reqctx** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %17 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %20 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %20, %struct.scatterlist** %15, align 8
  %21 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %22 = icmp ne %struct.scatterlist* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  %24 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %25 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28, %23, %4
  store i32 0, i32* %5, align 4
  br label %162

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35, %32
  store i32 0, i32* %14, align 4
  br label %39

39:                                               ; preds = %38, %35
  br label %40

40:                                               ; preds = %95, %39
  %41 = load i32, i32* %11, align 4
  %42 = icmp ugt i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %45 = icmp ne %struct.scatterlist* %44, null
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br i1 %47, label %48, label %98

48:                                               ; preds = %46
  %49 = load i32, i32* %12, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %53 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp uge i32 %51, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %48
  %57 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %58 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = sub i32 %60, %59
  store i32 %61, i32* %10, align 4
  %62 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %63 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %56
  store i32 0, i32* %13, align 4
  br label %98

67:                                               ; preds = %56
  br label %95

68:                                               ; preds = %48
  %69 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %70 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub i32 %71, %72
  %74 = load i32, i32* @BUFLEN, align 4
  %75 = call i32 @IS_ALIGNED(i32 %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %98

78:                                               ; preds = %68
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %81 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = sub i32 %82, %83
  %85 = icmp ult i32 %79, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 0, i32* %14, align 4
  br label %98

87:                                               ; preds = %78
  %88 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %89 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub i32 %90, %91
  %93 = load i32, i32* %11, align 4
  %94 = sub i32 %93, %92
  store i32 %94, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %95

95:                                               ; preds = %87, %67
  %96 = load %struct.scatterlist*, %struct.scatterlist** %15, align 8
  %97 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %96)
  store %struct.scatterlist* %97, %struct.scatterlist** %15, align 8
  br label %40

98:                                               ; preds = %86, %77, %66, %46
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %103 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @s5p_hash_copy_sgs(%struct.s5p_hash_reqctx* %102, %struct.scatterlist* %103, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %162

106:                                              ; preds = %98
  %107 = load i32, i32* %14, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %106
  %110 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %111 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @s5p_hash_copy_sg_lists(%struct.s5p_hash_reqctx* %110, %struct.scatterlist* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  br label %162

114:                                              ; preds = %106
  br label %115

115:                                              ; preds = %114
  %116 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %117 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %154

120:                                              ; preds = %115
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %123 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %125 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %124, i32 0, i32 3
  %126 = load %struct.scatterlist*, %struct.scatterlist** %125, align 8
  %127 = call i32 @sg_init_table(%struct.scatterlist* %126, i32 2)
  %128 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %129 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %128, i32 0, i32 3
  %130 = load %struct.scatterlist*, %struct.scatterlist** %129, align 8
  %131 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %132 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %131, i32 0, i32 5
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %137 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @sg_set_buf(%struct.scatterlist* %130, i32 %135, i64 %138)
  %140 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %141 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %140, i32 0, i32 3
  %142 = load %struct.scatterlist*, %struct.scatterlist** %141, align 8
  %143 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %144 = call i32 @sg_chain(%struct.scatterlist* %142, i32 2, %struct.scatterlist* %143)
  %145 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %146 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %145, i32 0, i32 3
  %147 = load %struct.scatterlist*, %struct.scatterlist** %146, align 8
  %148 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %149 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %148, i32 0, i32 2
  store %struct.scatterlist* %147, %struct.scatterlist** %149, align 8
  %150 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %151 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %161

154:                                              ; preds = %115
  %155 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %156 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %157 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %156, i32 0, i32 2
  store %struct.scatterlist* %155, %struct.scatterlist** %157, align 8
  %158 = load i32, i32* %12, align 4
  %159 = load %struct.s5p_hash_reqctx*, %struct.s5p_hash_reqctx** %6, align 8
  %160 = getelementptr inbounds %struct.s5p_hash_reqctx, %struct.s5p_hash_reqctx* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %154, %120
  store i32 0, i32* %5, align 4
  br label %162

162:                                              ; preds = %161, %109, %101, %31
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32 @IS_ALIGNED(i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @s5p_hash_copy_sgs(%struct.s5p_hash_reqctx*, %struct.scatterlist*, i32) #1

declare dso_local i32 @s5p_hash_copy_sg_lists(%struct.s5p_hash_reqctx*, %struct.scatterlist*, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i32, i64) #1

declare dso_local i32 @sg_chain(%struct.scatterlist*, i32, %struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
