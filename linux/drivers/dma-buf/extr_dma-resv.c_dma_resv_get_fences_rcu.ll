; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_get_fences_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma-buf/extr_dma-resv.c_dma_resv_get_fences_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_resv = type { i32, i32, i32 }
%struct.dma_fence = type { i32 }
%struct.dma_resv_list = type { i32, i32, i32* }

@GFP_NOWAIT = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dma_resv_get_fences_rcu(%struct.dma_resv* %0, %struct.dma_fence** %1, i32* %2, %struct.dma_fence*** %3) #0 {
  %5 = alloca %struct.dma_resv*, align 8
  %6 = alloca %struct.dma_fence**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dma_fence***, align 8
  %9 = alloca %struct.dma_fence**, align 8
  %10 = alloca %struct.dma_fence*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dma_resv_list*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.dma_fence**, align 8
  store %struct.dma_resv* %0, %struct.dma_resv** %5, align 8
  store %struct.dma_fence** %1, %struct.dma_fence*** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.dma_fence*** %3, %struct.dma_fence**** %8, align 8
  store %struct.dma_fence** null, %struct.dma_fence*** %9, align 8
  store i32 1, i32* %12, align 4
  br label %18

18:                                               ; preds = %157, %4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %21 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %20, i32 0, i32 0
  %22 = call i32 @read_seqcount_begin(i32* %21)
  store i32 %22, i32* %15, align 4
  %23 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %24 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @rcu_dereference(i32 %25)
  %27 = bitcast i8* %26 to %struct.dma_fence*
  store %struct.dma_fence* %27, %struct.dma_fence** %10, align 8
  %28 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %29 = icmp ne %struct.dma_fence* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %32 = call i32 @dma_fence_get_rcu(%struct.dma_fence* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  br label %155

35:                                               ; preds = %30, %18
  %36 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %37 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @rcu_dereference(i32 %38)
  %40 = bitcast i8* %39 to %struct.dma_resv_list*
  store %struct.dma_resv_list* %40, %struct.dma_resv_list** %13, align 8
  %41 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %42 = icmp ne %struct.dma_resv_list* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %45 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = mul i64 8, %47
  %49 = load i64, i64* %16, align 8
  %50 = add i64 %49, %48
  store i64 %50, i64* %16, align 8
  br label %51

51:                                               ; preds = %43, %35
  %52 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %53 = icmp ne %struct.dma_fence** %52, null
  br i1 %53, label %60, label %54

54:                                               ; preds = %51
  %55 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %56 = icmp ne %struct.dma_fence* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %16, align 8
  %59 = add i64 %58, 8
  store i64 %59, i64* %16, align 8
  br label %60

60:                                               ; preds = %57, %54, %51
  %61 = load i64, i64* %16, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %129

63:                                               ; preds = %60
  %64 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %65 = load i64, i64* %16, align 8
  %66 = load i32, i32* @GFP_NOWAIT, align 4
  %67 = load i32, i32* @__GFP_NOWARN, align 4
  %68 = or i32 %66, %67
  %69 = call %struct.dma_fence** @krealloc(%struct.dma_fence** %64, i64 %65, i32 %68)
  store %struct.dma_fence** %69, %struct.dma_fence*** %17, align 8
  %70 = load %struct.dma_fence**, %struct.dma_fence*** %17, align 8
  %71 = icmp ne %struct.dma_fence** %70, null
  br i1 %71, label %87, label %72

72:                                               ; preds = %63
  %73 = call i32 (...) @rcu_read_unlock()
  %74 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %75 = call i32 @dma_fence_put(%struct.dma_fence* %74)
  store %struct.dma_fence* null, %struct.dma_fence** %10, align 8
  %76 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.dma_fence** @krealloc(%struct.dma_fence** %76, i64 %77, i32 %78)
  store %struct.dma_fence** %79, %struct.dma_fence*** %17, align 8
  %80 = load %struct.dma_fence**, %struct.dma_fence*** %17, align 8
  %81 = icmp ne %struct.dma_fence** %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load %struct.dma_fence**, %struct.dma_fence*** %17, align 8
  store %struct.dma_fence** %83, %struct.dma_fence*** %9, align 8
  br label %157

84:                                               ; preds = %72
  %85 = load i32, i32* @ENOMEM, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %12, align 4
  br label %160

87:                                               ; preds = %63
  %88 = load %struct.dma_fence**, %struct.dma_fence*** %17, align 8
  store %struct.dma_fence** %88, %struct.dma_fence*** %9, align 8
  %89 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %90 = icmp ne %struct.dma_resv_list* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %93 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32 [ %94, %91 ], [ 0, %95 ]
  store i32 %97, i32* %11, align 4
  store i32 0, i32* %14, align 4
  br label %98

98:                                               ; preds = %125, %96
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* %11, align 4
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %102, label %128

102:                                              ; preds = %98
  %103 = load %struct.dma_resv_list*, %struct.dma_resv_list** %13, align 8
  %104 = getelementptr inbounds %struct.dma_resv_list, %struct.dma_resv_list* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @rcu_dereference(i32 %109)
  %111 = bitcast i8* %110 to %struct.dma_fence*
  %112 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %113 = load i32, i32* %14, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %112, i64 %114
  store %struct.dma_fence* %111, %struct.dma_fence** %115, align 8
  %116 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %117 = load i32, i32* %14, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %116, i64 %118
  %120 = load %struct.dma_fence*, %struct.dma_fence** %119, align 8
  %121 = call i32 @dma_fence_get_rcu(%struct.dma_fence* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %102
  br label %128

124:                                              ; preds = %102
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %14, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %14, align 4
  br label %98

128:                                              ; preds = %123, %98
  br label %129

129:                                              ; preds = %128, %60
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %11, align 4
  %132 = icmp ne i32 %130, %131
  br i1 %132, label %139, label %133

133:                                              ; preds = %129
  %134 = load %struct.dma_resv*, %struct.dma_resv** %5, align 8
  %135 = getelementptr inbounds %struct.dma_resv, %struct.dma_resv* %134, i32 0, i32 0
  %136 = load i32, i32* %15, align 4
  %137 = call i64 @read_seqcount_retry(i32* %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %154

139:                                              ; preds = %133, %129
  br label %140

140:                                              ; preds = %144, %139
  %141 = load i32, i32* %14, align 4
  %142 = add i32 %141, -1
  store i32 %142, i32* %14, align 4
  %143 = icmp ne i32 %141, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %140
  %145 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %146 = load i32, i32* %14, align 4
  %147 = zext i32 %146 to i64
  %148 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %145, i64 %147
  %149 = load %struct.dma_fence*, %struct.dma_fence** %148, align 8
  %150 = call i32 @dma_fence_put(%struct.dma_fence* %149)
  br label %140

151:                                              ; preds = %140
  %152 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %153 = call i32 @dma_fence_put(%struct.dma_fence* %152)
  br label %155

154:                                              ; preds = %133
  store i32 0, i32* %12, align 4
  br label %155

155:                                              ; preds = %154, %151, %34
  %156 = call i32 (...) @rcu_read_unlock()
  br label %157

157:                                              ; preds = %155, %82
  %158 = load i32, i32* %12, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %18, label %160

160:                                              ; preds = %157, %84
  %161 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  %162 = icmp ne %struct.dma_fence** %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %165 = load %struct.dma_fence**, %struct.dma_fence*** %6, align 8
  store %struct.dma_fence* %164, %struct.dma_fence** %165, align 8
  br label %177

166:                                              ; preds = %160
  %167 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %168 = icmp ne %struct.dma_fence* %167, null
  br i1 %168, label %169, label %176

169:                                              ; preds = %166
  %170 = load %struct.dma_fence*, %struct.dma_fence** %10, align 8
  %171 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %172 = load i32, i32* %11, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %11, align 4
  %174 = zext i32 %172 to i64
  %175 = getelementptr inbounds %struct.dma_fence*, %struct.dma_fence** %171, i64 %174
  store %struct.dma_fence* %170, %struct.dma_fence** %175, align 8
  br label %176

176:                                              ; preds = %169, %166
  br label %177

177:                                              ; preds = %176, %163
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %182 = call i32 @kfree(%struct.dma_fence** %181)
  store %struct.dma_fence** null, %struct.dma_fence*** %9, align 8
  br label %183

183:                                              ; preds = %180, %177
  %184 = load i32, i32* %11, align 4
  %185 = load i32*, i32** %7, align 8
  store i32 %184, i32* %185, align 4
  %186 = load %struct.dma_fence**, %struct.dma_fence*** %9, align 8
  %187 = load %struct.dma_fence***, %struct.dma_fence**** %8, align 8
  store %struct.dma_fence** %186, %struct.dma_fence*** %187, align 8
  %188 = load i32, i32* %12, align 4
  ret i32 %188
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_seqcount_begin(i32*) #1

declare dso_local i8* @rcu_dereference(i32) #1

declare dso_local i32 @dma_fence_get_rcu(%struct.dma_fence*) #1

declare dso_local %struct.dma_fence** @krealloc(%struct.dma_fence**, i64, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dma_fence_put(%struct.dma_fence*) #1

declare dso_local i64 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @kfree(%struct.dma_fence**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
